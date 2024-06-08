from langchain_community.llms import Ollama
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
import time

start = time.time()

# print(23*2.3)



from langchain_core.pydantic_v1 import BaseModel, Field
llm = Ollama(model="gemma:2b", temperature=1)

queryPlace = "Delhi"
queryDays = 5
prompt = "You are an expert travel planner. Give a travel itinerary for visit to rishikesh, it should have enough places to last for 5 days with 10 - 12 places. it should contain a list of places within with each containing name,longitude, latitude, attraction, descrioption, visitTime,estimatedFoodCost estimatedTravelCost, estimatedStayCost and childrenAllowed. All your responses should be in UTF-8 JSON format with no extra comments or quote wrappers."
prompts = "You are an expert travel planner. It should contain a list of places within with each containing name,locationName,longitude, latitude, attraction, descrioption, visitTime,estimatedFoodCost estimatedTravelCost, estimatedStayCost and childrenAllowed. All your responses should be in UTF-8 JSON format with no extra comments or quote wrappers."
pprroommpptt = "You are an expert travel planner. Generate a list of travel destinationsfor visit to rishikesh for 5 days, each with the following details: name, locationName, longitude, latitude, attraction, description, visitTime, estimatedFoodCost, estimatedTravelCost, estimatedStayCost, and childrenAllowed. The response should be in UTF-8 JSON format without any extra comments or quote wrappers."
promptfordelhi = "You are an expert travel planner. Generate a fictional traveler's log in the form of a list of travel destinations for a 5-day trip to Delhi, with 2-3 places to visit each day. Each destination should include the following details: name, description, locationName, longitude, latitude, attraction, description, visitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers."
newpromptfordelhi = f"You are an expert travel planner. Generate a fictional traveler's log in the form of a list of travel destinations for a trip to {queryPlace}, with a total of {str(queryDays * 2)} places.you can include clubs, bars, forts, restaurants, hidden gems, also some other famous places like museums etc, . Each destination should include the following details: name, description, locationName, longitude, latitude, attraction, totalTravelTimeInHours, visitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers."
newPromptJSONLISt = "You are an expert travel planner. Generate a fictional traveler's log in the form of a list of travel destinations for a 5-day trip to Delhi, with 2-3 places to visit each day. Each destination should include the following details: name, locationName, longitude, latitude, attraction, description, visitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. All costs should be in USD. The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers."
Sschema = {"properties": {"places": {"items": {"required": ["name", "location", "image_link", "description", "attraction", "VisitTime", "childrenAllowed"],"properties": {"name": {    "type": "string",    "title": "name"},"longitude": {    "type": "string",    "title": "longitude",},"latitude": {    "type": "string",    "title": "latitude",},"location": {    "type": "string",    "title": "location "},"image_link": {    "type": "string",    "title": "image_link "},"description": {    "type": "string",    "title": "description "},"attraction": {    "type": "string",    "title": "attraction "},"VisitTime": {    "type": "string",    "title": "VisitTime "},"childrenAllowed": {    "type": "string",    "title": "childrenAllowed "},},"type": "object"},"type": "array"},"dayWiseItenary": {"items": {"type": "object","day": {"type": "string"},"places": {"type": "array","items": {"type": "string",}}},"type": "array"},"totalTravelTime": {"type": "string"},"hotels": {"type": "array","items": {    "type": "String"}},"estimatedCost": {"type": "object","properties": {"accomodation": {"type": "String",},"activities": {"type": "String",},"food": {"type": "String",},"transport": {"type": "String",}}},"experiences": {"type": "array","items": { "type": "string" }},"transport": {"type": "array","items": { "type": "string" }},},"required": ["places","dayWiseItinerary","totalTravelTime","hotels","estimatedCost","experiences","transport"],"title": "Travel Itinerary","type": "object"}
schema = {
    "properties": {
        "places": {
            "type": "array",
            "items": {
                "required": [
                    "name", "location", "image_link", "dailyLog","description", "attraction", "VisitTime", "childrenAllowed"
                ],
                "properties": {
                    "name": {
                        "type": "string",
                    },
                    "longitude": {
                        "type": "string",
                    },
                    "latitude": {
                        "type": "string",
                    },
                    "location": {
                        "type": "string",
                    },
                    "image_link": {
                        "type": "string",
                    },
                    "description": {
                        "type": "string",
                    },
                    "dailyLog": {
                        "type": "string",
                    },
                    "attraction": {
                        "type": "string",
                    },
                    "VisitTime": {
                        "type": "string",
                    },
                    "childrenAllowed": {
                        "type": "string",
                    },
                },
                "type": "object"
            }
        },
        "dayWiseItenary": {
            "items": {
                "type": "object",
                "day": {
                    "type": "string"
                },
                "places": {
                    "type": "array",
                    "items": {
                        "type": "string",
                    }
                }
            },
            "type": "array"
        },
        "totalTravelTime": {
            "type": "string"
        },
        "hotels": {
            "type": "array",
            "items": {
                "type": "String"
            }
        },
        "estimatedCost": {
            "type": "object",
            "properties": {
                "accomodation": {
                    "type": "String",
                },
                "activities": {
                    "type": "String",
                },
                "food": {
                    "type": "String",
                },
                "transport": {
                    "type": "String",
                }
            }
        },
        "experiences": {
            "type": "array",
            "items": { "type": "string" }
        },
        "transport": {
            "type": "array",
            "items": { "type": "string" }
        },
    },
    "required": [
        "places",
        "dayWiseItinerary",
        "totalTravelTime",
        "hotels",
        "estimatedCost",
        "experiences",
        "transport"
    ],
    "title": "Travel Itinerary",
    "type": "object"
}

schema2 = {
        "places": [{
                    "name": {
                        "type": "string",
                        "title": "name"
                    },
                    "longitude": {
                        "type": "string",
                        "title": "longitude",
                    },
                    "latitude": {
                        "type": "string",
                        "title": "latitude",
                    },
                    "location": {
                        "type": "string",
                        "title": "location "
                    },
                    "image_link": {
                        "type": "string",
                        "title": "image_link "
                    },
                    "dailyLog": {
                        "type": "string",
                        "title": "daily log of a fictional traveller "
                    },
                    "description": {
                        "type": "string",
                        "title": "description "
                    },
                    "attraction": {
                        "type": "string",
                        "title": "attraction "
                    },
                    "VisitTime": {
                        "type": "string",
                        "title": "VisitTime "
                    },
                    "childrenAllowed": {
                        "type": "string",
                        "title": "childrenAllowed "
                    },
                },
            ]
        ,
        "dayWiseItenary": [
            {
                "day": {
                    "type": "string"
                },
                "places": [

                ]
}
        ],
        "totalTravelTime": {
            "type": "string"
        },
        "hotels": [{
            "type": "String"
        }]
        ,
        "estimatedCost": {

                "accomodation": {
                    "type": "String",
                },
                "activities": {
                    "type": "String",
                },
                "food": {
                    "type": "String",
                },
                "transport": {
                    "type": "String",
                }

        },
        "experiences":
          [{"type": "string"}]
        ,
        "transport": [{"type": "string"}],
    }

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
    totalTravelTimeInHours: Optional[float] = Field(
        default=1, description="Total Travel Time"
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
        print("totalTravelTimeinHours: ", self.totalTravelTimeInHours)
        print("estimatedTravelCost: ", self.estimatedTravelCost)
class Data(BaseModel):
    """Extracted data about people."""
    # Creates a model so that we can extract multiple entities.
    places: List[Places]
    dayWiseItinerary: Optional[List[str]] = Field(
        default=[], description="Day Wise Itinerary"
    )
    totalTravelTime: Optional[str] = Field(
        default="1 hour", description="Total Travel Time"
    )
    hotels: Optional[List[str]] = Field(
        default=[], description="Hotels"
    )
    experience: Optional[List[str]] = Field(
        default=[], description="Experiences"
    )
    transport: Optional[List[str]] = Field(
        default=['Taxi', 'train'], description="Transport Options"
    )
    estimatedCost: Optional[Dict[str, str]] = Field (
        default = {
        "accommodation": "",
        "activities": "",
        "food": "",
        "transport": ""
    }, description="estimated Cost of various Activities")



responsewithloc = {
    "places": [
        {
            "name": "Golden Temple",
            "location": "Amritsar",
            "longitude": "74.8755",
            "latitude": "31.6209",
            "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "The Harmandir Sahib, informally referred to as the Golden Temple, is a prominent Sikh gurdwara located in the city of Amritsar, Punjab, India.",
            "attraction": "Historical, Religious",
            "VisitTime": "2-3 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Jallianwala Bagh",
            "location": "Amritsar",
            "longitude": "74.8723",
            "latitude": "31.6251",
            "image_link": "https://images.pexels.com/photos/2528431/pexels-photo-2528431.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "Jallianwala Bagh is a public garden in Amritsar, Punjab, India, and houses a memorial of national importance, established in 1951 by the Government of India, to commemorate the massacre of peaceful celebrators on the occasion of the Baisakhi festival on 13 April 1919, who were fired upon by troops of the British Indian Army.",
            "attraction": "Historical, Memorial",
            "VisitTime": "1-2 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Wagah Border",
            "location": "Amritsar",
            "longitude": "74.5823",
            "latitude": "31.6333",
            "image_link": "https://images.pexels.com/photos/6373487/pexels-photo-6373487.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "The Wagah border ceremony, officially called the Beating Retreat ceremony, is a daily military practice that the security forces of India and Pakistan have jointly followed since 1959.",
            "attraction": "Cultural, Military",
            "VisitTime": "1-2 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Anandpur Sahib",
            "location": "Rupnagar",
            "longitude": "76.4531",
            "latitude": "31.2053",
            "image_link": "https://images.pexels.com/photos/5125093/pexels-photo-5125093.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "Anandpur Sahib is a city in Shaheed Bhagat Singh Nagar district in the state of Punjab, India, founded in 1665 by the ninth Sikh Guru, Guru Tegh Bahadur.",
            "attraction": "Historical, Religious",
            "VisitTime": "2-3 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Kila Raipur Sports Festival",
            "location": "Ludhiana",
            "longitude": "75.8574",
            "latitude": "30.9020",
            "image_link": "https://images.pexels.com/photos/238636/pexels-photo-238636.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "The Kila Raipur Sports Festival, often referred to as the 'Rural Olympics', is an annual sporting event held in Kila Raipur, near Ludhiana, Punjab, India.",
            "attraction": "Cultural, Sports",
            "VisitTime": "1-2 days",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Virasat-e-Khalsa",
            "location": "Anandpur Sahib",
            "longitude": "76.4531",
            "latitude": "31.2053",
            "image_link": "https://images.pexels.com/photos/19818017/pexels-photo-19818017.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "Virasat-e-Khalsa is a museum and exhibition complex located in Anandpur Sahib, Punjab, India.",
            "attraction": "Cultural, Educational",
            "VisitTime": "2-3 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Rock Garden of Chandigarh",
            "location": "Chandigarh",
            "longitude": "76.7794",
            "latitude": "30.7333",
            "image_link": "https://images.pexels.com/photos/19811777/pexels-photo-19811777.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "The Rock Garden of Chandigarh is a sculpture garden in Chandigarh, India, also known as Nek Chand's Rock Garden.",
            "attraction": "Cultural, Art",
            "VisitTime": "2-3 hours",
            "childrenAllowed": "Yes"
        },
        {
            "name": "Sukhna Lake",
            "location": "Chandigarh",
            "longitude": "76.7827",
            "latitude": "30.7433",
            "image_link": "https://images.pexels.com/photos/22487027/pexels-photo-22487027.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "description": "Sukhna Lake in Chandigarh, India, is a reservoir at the foothills of the Shivalik range of the Himalayas.",
            "attraction": "Natural, Recreational",
            "VisitTime": "1-2 hours",
            "childrenAllowed": "Yes"
        }
    ],
    "dayWiseItinerary": [
        {
            "day": "Day 1",
            "places": [
                "Golden Temple",
                "Jallianwala Bagh"
            ]
        },
        {
            "day": "Day 2",
            "places": [
                "Wagah Border",
                "Anandpur Sahib"
            ]
        },
        {
            "day": "Day 3",
            "places": [
                "Kila Raipur Sports Festival"
            ]
        },
        {
            "day": "Day 4",
            "places": [
                "Virasat-e-Khalsa"
            ]
        },
        {
            "day": "Day 5",
            "places": [
                "Rock Garden of Chandigarh",
                "Sukhna Lake"
            ]
        }
    ],
    "totalTravelTime": "5 days",
    "hotels": [
        "Hotel A",
        "Hotel B",
        "Hotel C",
        "Hotel D",
        "Hotel E"
    ],
    "estimatedCost": {
        "accomodation": "5000 INR",
        "activities": "2000 INR",
        "food": "3000 INR",
        "transport": "4000 INR"
    },
    "experiences": [
        "Cultural",
        "Historical",
        "Religious",
        "Sports",
        "Art"
    ],
    "transport": [
        "Flight",
        "Train",
        "Cab",
        "Auto-rickshaw",
        "Walking"
    ]
}
# structuredllm = llm.with_structured_output(schema)

# print(llm.invoke(f"tell me some places to visit in dehradun. give the answer in json format . schema is {schema}/n do not put anything else in the response other than the structured response as it is going to be parsed to json"))
planet_parser = PydanticOutputParser(pydantic_object=Data)
output = llm.invoke(newpromptfordelhi)
print(output, " this is llm output")
parseroutput = planet_parser.parse(output)
dataplaces = []
experiences = []
totalPlaces = len(parseroutput.places)
totalTravelTime = 0
for i in range(len(parseroutput.places)):
    print("Jackshit", parseroutput.places[i].showVal(), " Place Pedantic", i)
    experiences.append(parseroutput.places[i].attraction)
    totalTravelTime += parseroutput.places[i].totalTravelTimeInHours
parseroutput.totalTravelTime = f"{totalTravelTime} hour(s)"
parseroutput.estimatedCost = {
    "accommodation":  parseroutput.places[0].estimatedStayCost,
    "activities": parseroutput.places[0].estimatedFoodCost,
    "food":  parseroutput.places[0].estimatedFoodCost,
    "transport": parseroutput.places[0].estimatedTravelCost
}
for i in range(queryDays):
    if totalPlaces > (queryDays - i) * 2:
        dataplaces.append([parseroutput.places[totalPlaces - 1].name, parseroutput.places[totalPlaces - 2].name, parseroutput.places[totalPlaces - 3].name])
        totalPlaces-=3
    elif(totalPlaces > 1):
        dataplaces.append([parseroutput.places[totalPlaces - 1].name, parseroutput.places[totalPlaces - 2].name])
        totalPlaces-=2
    elif totalPlaces == 1:
        dataplaces.append([parseroutput.places[totalPlaces - 1].name])
        totalPlaces-=1
    elif totalPlaces < 0:
        break
parseroutput.dayWiseItinerary = dataplaces
parseroutput.experience = experiences
print(parseroutput.dayWiseItinerary, "DayWise Stuff")
print(parseroutput.experience, "Experience Stuff")
print(parseroutput.totalTravelTime, "travelTime Stuff Stuff")

print("json_conversion", parseroutput.json())
parser = JsonOutputParser(pydantic_object=Data)
parseroutput2 = parser.parse(output)
print("JackshitNew ", parseroutput2)

prompt = PromptTemplate(
    template="Answer the user query.\n{format_instructions}\n{query}\n",
    input_variables=["query"],
    partial_variables={"format_instructions": parser.get_format_instructions()},
)

# chain = prompt | llm | parser
query = "tell me some places to visit in dehradun"
# response = chain.invoke({"query": query})
# print(response)
# print(prompt.invoke({"query": query}))
end = time.time()
eltime = end - start
print((eltime) // 60, "m",eltime - (eltime //60) * 60,"s" , "time elapsed")
