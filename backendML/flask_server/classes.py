from typing import List, Optional, Dict
from langchain_core.pydantic_v1 import BaseModel, Field
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
    image_link: Optional[str] = Field(default="https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940", description="Image of the place")

    locationName: Optional[str] = Field(
        default="Location, Location", description="location of the place"
    )
    latitude: Optional[str] = Field(
        default='20.5937', description="latitude of the place"
    )
    totalTravelTimeInHours: Optional[float] = Field(
        default=1, description="Total Travel Time"
    )
    longitude: Optional[str] = Field(
        default='78.9629', description="longitude of the place"
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
    childrenAllowed: Optional[str] = Field(
        default="False", description="children allowed or not"
    )
    VisitTime: Optional[str] = Field(
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
        print("img link: ", self.image_link)
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
    dayWiseItinerary: Optional[List[dict]] = Field(
        default=[], description="Day Wise Itinerary"
    )
    totalTravelTime: Optional[str] = Field(
        default="1 hour", description="Total Travel Time"
    )
    hotels: Optional[List[str]] = Field(
        default=[], description="Hotels"
    )
    experiences: Optional[List[str]] = Field(
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
