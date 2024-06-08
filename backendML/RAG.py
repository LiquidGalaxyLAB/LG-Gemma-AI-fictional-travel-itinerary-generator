import requests
from langchain_community.document_loaders import UnstructuredHTMLLoader
from langchain_community.document_loaders import WebBaseLoader
import urllib.parse
from typing import List, Optional, Dict
import json
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.messages import (
    HumanMessage,
)
from langchain_core.prompts import PromptTemplate
from langchain.output_parsers import PydanticOutputParser
from langchain_core.output_parsers import JsonOutputParser
import requests
from langchain_community.llms import Ollama
from langchain_community.embeddings import HuggingFaceBgeEmbeddings
model_name = "BAAI/bge-base-en-v1.5"
model_kwargs = {"device": "cpu"}
encode_kwargs = {"normalize_embeddings": True}

hf = HuggingFaceBgeEmbeddings(
    model_name=model_name,
    model_kwargs=model_kwargs,
    encode_kwargs=encode_kwargs
)

from langchain_core.pydantic_v1 import BaseModel, Field
import bs4
from langchain import hub
from langchain_community.document_loaders import WebBaseLoader
from langchain_chroma import Chroma
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import RunnablePassthrough
from langchain_openai import OpenAIEmbeddings
from langchain_text_splitters import RecursiveCharacterTextSplitter

from bs4 import BeautifulSoup
S = requests.Session()

URL = "https://en.wikipedia.org/w/api.php"

SEARCHPAGE = "Nelson Mandela"

PARAMS = {
    "action": "query",
    "format": "json",
    "list": "search",
    "srsearch": SEARCHPAGE
}
PARAMS2 = {
    "action": "parse",
    "page": "delhi",
    "format": "json"
}
full_url = f"{URL}?{urllib.parse.urlencode(PARAMS2)}"

loader = WebBaseLoader(
    web_paths=(full_url,),
    )
docs = loader.load()
print(len(docs), "loaded data")
# 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
text_splitter = RecursiveCharacterTextSplitter(chunk_size=1000, chunk_overlap=200)
splits = text_splitter.split_documents(docs)
vectorstore = Chroma.from_documents(documents=splits, embedding=hf)

# Retrieve and generate using the relevant snippets of the blog.
retriever = vectorstore.as_retriever()
prompt = hub.pull("rlm/rag-prompt")
def format_docs(docs):
    return "\n\n".join(doc.page_content for doc in docs)


llm = Ollama(model="gemma:2b")
class Places(BaseModel):
    """Information about a place."""

    # ^ Doc-string for the entity Person.
    # This doc-string is sent to the LLM as the description of the schema Person,
    # and it can help to improve extraction results.

    # Note that:
    # 1. Each field is an `optional` -- this allows the model to decline to extract it!
    # 2. Each field has a `description` -- this description is used by the LLM.
    # Having a good description can help improve extraction results.
    name: Optional[str] = Field(default=None, description="The name of the place")
    locationName: Optional[str] = Field(
        default="Location, Location", description="location of the place"
    )
    latitude: Optional[float] = Field(
        default=20.5937, description="latitude of the place"
    )
    longitude: Optional[float] = Field(
        default=78.9629, description="longitude of the place"
    )
    dailyLog: Optional[str] = Field(
        default="I looked around at that place", description="dailyLog of the place"
    )
    estimatedFoodCost: Optional[str] = Field(
        default="500", description="estimated Food Cost of the place"
    )
    estimatedTravelCost: Optional[str] = Field(
        default="500", description="estimated Travel Cost of the place"
    )
    estimatedStayCost: Optional[str] = Field(
        default="500", description="estimated Stay Cost of the place"
    )
    description: Optional[str] = Field(
        default="the place is one of the famous places", description="description of the place"
    )
    childrenAllowed: Optional[bool] = Field(
        default=False, description="children allowed or not"
    )
    visitTime: Optional[str] = Field(
        default="10:00 to 19:00", description="visitation time in 24 hour format"
    )
    attraction: Optional[str] = Field(
        default="This place is described by natives as heart of the country", description="main attraction about the place"
    )
    def showVal(self):
        print()
        print("name: ", self.name)
        print("locationName: ", self.locationName)
        print("longitude: ", self.longitude)
        print("latitude: ", self.latitude)
        print("visit Time: ", self.visitTime)
        print("dailyLog: ", self.dailyLog)
        print("description: ", self.description)
        print("attraction: ", self.attraction)
        print("estimatedFoodCost: ", self.estimatedFoodCost)
        print("estimatedStayCost: ", self.estimatedStayCost)
        print("estimatedTravelCost: ", self.estimatedTravelCost)
class Data(BaseModel):
    """Extracted data about people."""
    # Creates a model so that we can extract multiple entities.
    places: List[Places]
    dayWiseItinerary: Optional[List[str]] = Field(
        default=[], description="Day Wise Itinerary"
    )
    totalTravelTime: Optional[str] = Field(
        default=[], description="Total Travel Time"
    )
    hotels: Optional[List[str]] = Field(
        default=[], description="Hotels"
    )
    experience: Optional[List[str]] = Field(
        default=[], description="Experiences"
    )
    transport: Optional[List[str]] = Field(
        default=[], description="Transport Options"
    )
    estimatedCost: Optional[Dict[str, str]] = Field (
        default = {
        "accommodation": "",
        "activities": "",
        "food": "",
        "transport": ""
    }, description="estimated Cost of various Activities")
rag_chain = (
    {"context": retriever | format_docs, "question": RunnablePassthrough()}
    | prompt
    | llm
    | PydanticOutputParser(pydantic_object=Data)
)

# output = llm.invoke(newpromptfordelhi)
# print(output, " this is llm output")
queryPlace = "Delhi"
queryDays = 5
newpromptfordelhi = f"You are an expert travel planner. Generate a fictional traveler's log in the form of a list of travel destinations for a trip to {queryPlace}, with a total of {str(queryDays * 2)} places.you can include clubs, bars, forts, restaurants, hidden gems, also some other famous places like museums etc, . Each destination should include the following details: name, description, locationName, longitude, latitude, attraction, description, visitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers."
parseroutput = rag_chain.invoke(newpromptfordelhi)
dataplaces = []
for i in range(len(parseroutput.places)):
    print("Jackshit", parseroutput.places[i].showVal(), " Place Pedantic", i)
    dataplaces.append(parseroutput.places[i])
print("json_conversion", parseroutput.json())
print()