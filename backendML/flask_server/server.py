from classes import Data, Places
from flask import Flask
from langchain_community.llms import Ollama
from responses import responsewithloc
import json
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.messages import (
    HumanMessage,
)
from langchain_core.prompts import PromptTemplate
from langchain.output_parsers import PydanticOutputParser
from langchain_core.output_parsers import JsonOutputParser
from flask import request, jsonify
import time



llm = Ollama(model="gemma:2b", temperature=1)

app = Flask(__name__)

@app.post("/query")
def query():
    start = time.time()
    queryPlace = request.form['queryPlace']

    queryDays = int(request.form['queryDays'])
    print(queryPlace, queryDays, "request received")
    prompt = f"You are an expert travel planner. Generate a fictional traveler's log in the form of a list of travel destinations for a trip to {queryPlace}, with a total of {str(queryDays * 2)} places.you can include clubs, bars, forts, restaurants, hidden gems, also some other famous places like museums etc, . Each destination should include the following details: name, description, locationName, longitude, latitude, attraction, totalTravelTimeInHours, visitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers."
    print(prompt, "this is the prompt")
    planet_parser = PydanticOutputParser(pydantic_object=Data)
    output = llm.invoke(prompt)
    print(output, " this is llm output")
    end = time.time()
    eltime = end - start
    print((eltime) // 60, "m", eltime - (eltime // 60) * 60, "s", "time elapsed")
    try:
        parseroutput = planet_parser.parse(output)
        dataplaces = []
        experiences = []
        totalPlaces = len(parseroutput.places)
        totalTravelTime = 0
        for i in range(totalPlaces):
            # print("Jackshit", parseroutput.places[i].showVal(), " Place Pedantic", i)
            experiences.append(parseroutput.places[i].attraction)
            totalTravelTime += parseroutput.places[i].totalTravelTimeInHours
        parseroutput.totalTravelTime = f"{totalTravelTime} hour(s)"
        parseroutput.estimatedCost = {
            "accommodation": parseroutput.places[0].estimatedStayCost,
            "activities": parseroutput.places[0].estimatedFoodCost,
            "food": parseroutput.places[0].estimatedFoodCost,
            "transport": parseroutput.places[0].estimatedTravelCost
        }
        for i in range(queryDays):
            if totalPlaces > (queryDays - i) * 2:
                dataplaces.append(
                    {"day": f"Day {i+ 1}", "places" :  [parseroutput.places[totalPlaces - 1].name, parseroutput.places[totalPlaces - 2].name,
                      parseroutput.places[totalPlaces - 3].name]})
                totalPlaces -= 3
            elif (totalPlaces > 1):
                dataplaces.append(
                    {"day": f"Day {i+ 1}", "places" :[parseroutput.places[totalPlaces - 1].name, parseroutput.places[totalPlaces - 2].name]})
                totalPlaces -= 2
            elif totalPlaces == 1:
                dataplaces.append({"day": f"Day {i+ 1}", "places" :[parseroutput.places[totalPlaces - 1].name]})
                totalPlaces -= 1
            elif totalPlaces < 0:
                break
        parseroutput.dayWiseItinerary = dataplaces
        parseroutput.experience = experiences
        # print("json_conversion", parseroutput.json())

        json_data = json.loads(parseroutput.json())

        return {"status": "success", "data": json_data}
    except:
        return {"status": "success", "data": responsewithloc}

