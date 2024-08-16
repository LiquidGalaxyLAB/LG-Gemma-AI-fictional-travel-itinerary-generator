class savedResponses {
//   static String punjab =
//   '''
//   {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Golden Temple",
//                     "Jallianwala Bagh"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Wagah Border",
//                     "Anandpur Sahib"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Kila Raipur Sports Festival"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Virasat-e-Khalsa"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Rock Garden of Chandigarh",
//                     "Sukhna Lake"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "5000 INR",
//             "activities": "2000 INR",
//             "food": "3000 INR",
//             "transport": "4000 INR"
//         },
//         "experiences": [
//             "Cultural",
//             "Historical",
//             "Religious",
//             "Sports",
//             "Art"
//         ],
//         "hotels": [
//             "Hotel A",
//             "Hotel B",
//             "Hotel C",
//             "Hotel D",
//             "Hotel E"
//         ],
//         "places": [
//             {
//                 "VisitTime": "2-3 hours",
//                 "attraction": "Historical, Religious",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of The Harmandir Sahib, informally referred to as the Golden Temple, is a prominent Sikh gurdwara located in the city of Amritsar, Punjab, India.",
//                 "description": "The Harmandir Sahib, informally referred to as the Golden Temple, is a prominent Sikh gurdwara located in the city of Amritsar, Punjab, India.",
//                 "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "31.6209",
//                 "location": "Amritsar",
//                 "longitude": "74.8755",
//                 "name": "Golden Temple"
//             },
//             {
//                 "VisitTime": "1-2 hours",
//                 "attraction": "Historical, Memorial",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of Jallianwala Bagh is a public garden in Amritsar, Punjab, India, and houses a memorial of national importance, established in 1951 by the Government of India, to commemorate the massacre of peaceful celebrators on the occasion of the Baisakhi festival on 13 April 1919, who were fired upon by troops of the British Indian Army.",
//                 "description": "Jallianwala Bagh is a public garden in Amritsar, Punjab, India, and houses a memorial of national importance, established in 1951 by the Government of India, to commemorate the massacre of peaceful celebrators on the occasion of the Baisakhi festival on 13 April 1919, who were fired upon by troops of the British Indian Army.",
//                 "image_link": "https://images.pexels.com/photos/2528431/pexels-photo-2528431.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "31.6251",
//                 "location": "Amritsar",
//                 "longitude": "74.8723",
//                 "name": "Jallianwala Bagh"
//             },
//             {
//                 "VisitTime": "1-2 hours",
//                 "attraction": "Cultural, Military",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of The Wagah border ceremony, officially called the Beating Retreat ceremony, is a daily military practice that the security forces of India and Pakistan have jointly followed since 1959.",
//                 "description": "The Wagah border ceremony, officially called the Beating Retreat ceremony, is a daily military practice that the security forces of India and Pakistan have jointly followed since 1959.",
//                 "image_link": "https://images.pexels.com/photos/6373487/pexels-photo-6373487.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "31.6333",
//                 "location": "Amritsar",
//                 "longitude": "74.5823",
//                 "name": "Wagah Border"
//             },
//             {
//                 "VisitTime": "2-3 hours",
//                 "attraction": "Historical, Religious",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of Anandpur Sahib is a city in Shaheed Bhagat Singh Nagar district in the state of Punjab, India, founded in 1665 by the ninth Sikh Guru, Guru Tegh Bahadur.",
//                 "description": "Anandpur Sahib is a city in Shaheed Bhagat Singh Nagar district in the state of Punjab, India, founded in 1665 by the ninth Sikh Guru, Guru Tegh Bahadur.",
//                 "image_link": "https://images.pexels.com/photos/5125093/pexels-photo-5125093.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "31.2053",
//                 "location": "Rupnagar",
//                 "longitude": "76.4531",
//                 "name": "Anandpur Sahib"
//             },
//             {
//                 "VisitTime": "1-2 days",
//                 "attraction": "Cultural, Sports",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of The Kila Raipur Sports Festival, often referred to as the 'Rural Olympics', is an annual sporting event held in Kila Raipur, near Ludhiana, Punjab, India.",
//                 "description": "The Kila Raipur Sports Festival, often referred to as the 'Rural Olympics', is an annual sporting event held in Kila Raipur, near Ludhiana, Punjab, India.",
//                 "image_link": "https://images.pexels.com/photos/238636/pexels-photo-238636.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "30.9020",
//                 "location": "Ludhiana",
//                 "longitude": "75.8574",
//                 "name": "Kila Raipur Sports Festival"
//             },
//             {
//                 "VisitTime": "2-3 hours",
//                 "attraction": "Cultural, Educational",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of Virasat-e-Khalsa is a museum and exhibition complex located in Anandpur Sahib, Punjab, India.",
//                 "description": "Virasat-e-Khalsa is a museum and exhibition complex located in Anandpur Sahib, Punjab, India.",
//                 "image_link": "https://images.pexels.com/photos/19818017/pexels-photo-19818017.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "31.2053",
//                 "location": "Anandpur Sahib",
//                 "longitude": "76.4531",
//                 "name": "Virasat-e-Khalsa"
//             },
//             {
//                 "VisitTime": "2-3 hours",
//                 "attraction": "Cultural, Art",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of The Rock Garden of Chandigarh is a sculpture garden in Chandigarh, India, also known as Nek Chand's Rock Garden.",
//                 "description": "The Rock Garden of Chandigarh is a sculpture garden in Chandigarh, India, also known as Nek Chand's Rock Garden.",
//                 "image_link": "https://images.pexels.com/photos/19811777/pexels-photo-19811777.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "30.7333",
//                 "location": "Chandigarh",
//                 "longitude": "76.7794",
//                 "name": "Rock Garden of Chandigarh"
//             },
//             {
//                 "VisitTime": "1-2 hours",
//                 "attraction": "Natural, Recreational",
//                 "childrenAllowed": "Yes",
//                 "dailyLog": " The story of Sukhna Lake in Chandigarh, India, is a reservoir at the foothills of the Shivalik range of the Himalayas.",
//                 "description": "Sukhna Lake in Chandigarh, India, is a reservoir at the foothills of the Shivalik range of the Himalayas.",
//                 "image_link": "https://images.pexels.com/photos/22487027/pexels-photo-22487027.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "30.7433",
//                 "location": "Chandigarh",
//                 "longitude": "76.7827",
//                 "name": "Sukhna Lake"
//             }
//         ],
//         "totalTravelTime": "5 days",
//         "transport": [
//             "Flight",
//             "Train",
//             "Cab",
//             "Auto-rickshaw",
//             "Walking"
//         ]
//     },
//     "status": "success"
// }
//   '''
//     ;
  static String punjab =
  '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Dholaki Wetland, Punjab",
                    "Hruhanwala Caves, Punjab"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Khajuraho Temples, Punjab",
                    "Ambala Sahib Gurudwara, Punjab"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Rock Garden, Chandigarh",
                    "Kapoor Sahib Gurudwara, Chandigarh"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Gobindgarh Fort, Punjab",
                    "Jallianwala Bagh, Amritsar"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Durgiana Temple, Amritsar",
                    "Golden Temple, Amritsar"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "500",
            "activities": "500",
            "food": "500",
            "transport": "500"
        },
        "experiences": [
            "Golden Temple",
            "Durgiana Temple",
            "Jallianwala Bagh",
            "Gobindgarh Fort",
            "Kapoor Sahib Gurudwara",
            "Rock Garden",
            "Ambala Sahib Gurudwara",
            "Khajuraho Temples",
            "Hruhanwala Caves",
            "Dholaki Wetland"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Golden Temple",
                "childrenAllowed": "True",
                "dailyLog": "The Golden Temple is a place of immense spiritual significance, and can be overwhelming for first-time visitors. However, it's well worth the effort to explore its intricate architecture and learn about Sikhism.",
                "description": "One of the holiest sites in Sikhism, the Golden Temple is a stunning architectural marvel. It's open to both Hindus and Sikhs, and is a must-visit for any visitor to Punjab.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/g2feb39bb6a59c3fe896e3602a17a15fe30ac0af0d22fce27d3c41011d2cbf7e28cc6c04206cf5a60ffb9787295776f66665c63e490668480fc6608d47e11f270_1280.jpg",
                "latitude": "31.61997865",
                "locationName": "Amritsar",
                "longitude": "74.87652807501824",
                "name": "Golden Temple, Amritsar",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Durgiana Temple",
                "childrenAllowed": "True",
                "dailyLog": "The Durgiana Temple is a beautiful temple that's a must-visit for any visitor to Amritsar. It's a place of great spiritual significance and is a popular spot for locals and tourists alike.",
                "description": "Another holy site in Amritsar, the Durgiana Temple is a temple dedicated to the goddess Durga. It's a popular spot for locals and tourists alike.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/gaf6bd2acb777cfd6f59b4f7bc06642dc19ef3d1cffe412eb6a93e0b0769073f44fe18ffa515201fb535ae9f96fdabba2a738983b2b6015518907437d556a290f_1280.jpg",
                "latitude": "74.0023",
                "locationName": "Amritsar",
                "longitude": "19.0493",
                "name": "Durgiana Temple, Amritsar",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jallianwala Bagh",
                "childrenAllowed": "False",
                "dailyLog": "The Jallianwala Bagh is a place of great historical significance and is a must-visit for any visitor to Amritsar. It's a place where you can learn about the tragic events that unfolded on that fateful day.",
                "description": "One of the most famous and tragic events in the history of India, the Jallianwala Bagh was the site of a massacre in 1919. Today, it's a museum dedicated to the victims and their families.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/gde555bf5818ead10fcc061d6b64ad6785d40a5a9eee04004fa71f4e70ce2d6450ddf79ba25ba2676da8ecb2c9f2ca51c04d3ebb271a4d5dad451d6df203d8df6_1280.jpg",
                "latitude": "31.62085375",
                "locationName": "Amritsar",
                "longitude": "74.88013037088294",
                "name": "Jallianwala Bagh, Amritsar",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Gobindgarh Fort",
                "childrenAllowed": "True",
                "dailyLog": "The Gobindgarh Fort is a historical landmark that offers stunning views of the city. It was once the seat of the Sikh Empire and is a popular tourist destination.",
                "description": "A majestic fort located on the banks of the Beas River, the Gobindgarh Fort is a historical landmark in Punjab. It was once the seat of the Sikh Empire and offers stunning views of the city.",
                "estimatedFoodCost": "700",
                "estimatedStayCost": "700",
                "estimatedTravelCost": "700",
                "image_link": "https://pixabay.com/get/gbe01307cf5444b0d3ee0e5a2ed7c3c2ff81d69515cecbd5b61b280781e91a49f3738f44a0c458ff8f3823871f76939d755d9e39a5c07d4ec4550b6dd9908d065_1280.jpg",
                "latitude": "31.6271122",
                "locationName": "Amritsar",
                "longitude": "74.8604078",
                "name": "Gobindgarh Fort, Punjab",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Kapoor Sahib Gurudwara",
                "childrenAllowed": "True",
                "dailyLog": "The Kapoor Sahib Gurudwara is a place of great spiritual significance and is a must-visit for any visitor to Chandigarh. It's a place where you can learn about the Sikh faith and relax in a beautiful setting.",
                "description": "A holy Sikh temple in the heart of Chandigarh, the Kapoor Sahib Gurudwara is a place of great spiritual significance. It's a popular spot for locals and tourists alike.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/g0d11e05e65a639905b9de7f22ed7ae8aaddcf8cb86c38c97487906aa9a2890f96f4366b0dec675ec5c3e2be81aeef06af6be1514fb81343e681b3275fe0c6f2a_1280.jpg",
                "latitude": "76.8031",
                "locationName": "Chandigarh",
                "longitude": "30.7185",
                "name": "Kapoor Sahib Gurudwara, Chandigarh",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Rock Garden",
                "childrenAllowed": "True",
                "dailyLog": "The Rock Garden is a unique and iconic park in Chandigarh. It's a place where you can relax and enjoy the beauty of nature. It's a must-visit for any visitor to Chandigarh.",
                "description": "A unique and iconic park in Chandigarh, the Rock Garden is a garden made entirely of recycled materials. It's a popular spot for photography and is a testament to the creativity and imagination of its creator.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/gc8719db13e2b33aa0cd7e7bc556d741330edcb3f3c7b5e01799afb0ca41e54c373fdac3b669197c0c91b7e2065f38bc8ea80e834474d90ced5e04ccff5b64b1c_1280.jpg",
                "latitude": "30.7531959",
                "locationName": "Chandigarh",
                "longitude": "76.8066301819285",
                "name": "Rock Garden, Chandigarh",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Ambala Sahib Gurudwara",
                "childrenAllowed": "True",
                "dailyLog": "The Ambala Sahib Gurudwara is a place of great spiritual significance and is a must-visit for any visitor to Amritsar. It's a place where you can learn about the Sikh faith and relax in a beautiful setting.",
                "description": "A sacred Sikh temple located in the heart of Amritsar, the Ambala Sahib Gurudwara is a place of great spiritual significance. It's a popular spot for locals and tourists alike.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/gb92c198de156e056cc8ea841fffd6adf78160d3dd0610b1a8f47d98c9d3e3ce327810a0b86a3f9b1b501ef6cd3f35948c88b9d95c63fdf44f8d203d6abb72fa7_1280.jpg",
                "latitude": "74.0058",
                "locationName": "Amritsar",
                "longitude": "19.0511",
                "name": "Ambala Sahib Gurudwara, Punjab",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Khajuraho Temples",
                "childrenAllowed": "True",
                "dailyLog": "The Khajuraho Temples are a UNESCO World Heritage Site and offer stunning views of the surrounding landscape. They're a popular spot for pilgrims and tourists alike.",
                "description": "A picturesque group of temples in the heart of Punjab, the Khajuraho Temples are a UNESCO World Heritage Site and offer stunning views of the surrounding landscape. They're a popular spot for pilgrims and tourists alike.",
                "estimatedFoodCost": "700",
                "estimatedStayCost": "700",
                "estimatedTravelCost": "700",
                "image_link": "https://pixabay.com/get/g8d33b567cae27b163f40896784ae0322b44f199eba90057700a073eadd97a59e289bbee76f31e83c138273a245f7818255abe7dd5cc043efc84c11620d8102b9_1280.jpg",
                "latitude": "76.4324",
                "locationName": "Khajuraho",
                "longitude": "30.5682",
                "name": "Khajuraho Temples, Punjab",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Hruhanwala Caves",
                "childrenAllowed": "True",
                "dailyLog": "The Hruhanwala Caves offer a glimpse into ancient Hindu culture. They're a popular spot for tourists and historians alike.",
                "description": "A cave complex in the heart of Punjab, the Hruhanwala Caves offer a glimpse into ancient Hindu culture. They're a popular spot for tourists and historians alike.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/gabf098f47f1a3bb07a7ba1580248aba650598639fecd88291453711f0cbd6069523304b56222f96a6d82b69547023b52b3dde3473a530ab733be0ddad80a072b_1280.jpg",
                "latitude": "76.1146",
                "locationName": "Hruhanwala",
                "longitude": "30.5053",
                "name": "Hruhanwala Caves, Punjab",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dholaki Wetland",
                "childrenAllowed": "True",
                "dailyLog": "The Dholaki Wetland is a popular destination for birdwatching and wildlife enthusiasts. It's a UNESCO World Heritage Site and offers stunning views of the surrounding landscape.",
                "description": "A vast wetland in the heart of Punjab, the Dholaki Wetland is a popular destination for birdwatching and wildlife enthusiasts. It's a UNESCO World Heritage Site and offers stunning views of the surrounding landscape.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/g4b44286446f30d4eea5161b28a37453e9e2bbe9d471f422f62e6743290eb8834e849dbd12d4490becaf9a68c1ebcaa6adde315aa7dd63b8409c2500d06af84f2_1280.jpg",
                "latitude": "76.5152",
                "locationName": "Dholaki",
                "longitude": "30.3128",
                "name": "Dholaki Wetland, Punjab",
                "totalTravelTimeInHours": 2.0
            }
        ],
        "totalTravelTime": "22.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}''';
  static String punjab2 =
  '''
  {
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Chaulako",
                    "Pathankot"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Sriguru",
                    "Phagwara"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Jullant",
                    "Dhamiana"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Malerkot",
                    "Amritsar"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Patiala",
                    "Fatehgarh"
                ]
            },
            {
                "day": "Day 6",
                "places": [
                    "Jalandhar",
                    "Amritsar"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "500",
            "activities": "300",
            "food": "300",
            "transport": "300"
        },
        "experiences": [
            "Golden Temple",
            "Durgiana Temple",
            "Fatehgarh Fort",
            "Jagdish Temple",
            "Golden Temple",
            "Beas River",
            "Sikh Gurudwara",
            "Jullant Town",
            "Durgiana Temple",
            "Golden Temple",
            "Pathankot Fort",
            "Chaulako Fort"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Golden Temple",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Golden Temple and learning about Sikh traditions. Enjoying traditional Punjabi cuisine for lunch.",
                "description": "A holy city in the Sikh heartland, Amritsar is home to the Golden Temple, Jallianwala Bagh, and a vibrant cultural life.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "31.6343083",
                "locationName": "Amritsar",
                "longitude": "74.8736788",
                "name": "Amritsar",
                "totalTravelTimeInHours": 6.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Durgiana Temple",
                "childrenAllowed": "True",
                "dailyLog": "Visiting the Durgiana Temple and soaking in the spiritual atmosphere. Enjoying a delicious Punjabi dinner for dinner.",
                "description": "Known as the 'City of Temples', Jalandhar is a pilgrimage destination for Hindus and Sikhs. Visit the Durgiana Temple and the Gurdwara Baba Atal Sahib Gurudwara.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "400",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "31.3323762",
                "locationName": "Jalandhar",
                "longitude": "75.576889",
                "name": "Jalandhar",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Fatehgarh Fort",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Fatehgarh Fort and learning about its rich history. Enjoying traditional Punjabi food for dinner.",
                "description": "The ancestral city of the Khilari dynasty, Fatehgarh is a treasure trove of historical sites. Visit the Fatehgarh Fort, the Haveli, and the Sikh Gurudwara.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "400",
                "image_link": "https://images.pexels.com/photos/14890702/pexels-photo-14890702.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "27.3700748",
                "locationName": "Fatehgarh",
                "longitude": "79.620752",
                "name": "Fatehgarh",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jagdish Temple",
                "childrenAllowed": "True",
                "dailyLog": "Visiting the Jagdish Temple and learning about its religious significance. Enjoying a traditional Punjabi dinner for lunch.",
                "description": "A city of ancient origins, Patiala is renowned for its temples and palaces. Visit the Jagdish Temple, the Patiala Fort, and the Durgiana Temple.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "400",
                "image_link": "https://images.pexels.com/photos/5230079/pexels-photo-5230079.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "30.3295605",
                "locationName": "Patiala",
                "longitude": "76.4127819",
                "name": "Patiala",
                "totalTravelTimeInHours": 6.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Golden Temple",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Golden Temple and learning about Sikh traditions. Enjoying traditional Punjabi cuisine for lunch.",
                "description": "The heart of Punjab, Amritsar is a vibrant city with a rich cultural heritage. Visit the Golden Temple, the Jallianwala Bagh, and a host of museums and galleries.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "31.6343083",
                "locationName": "Amritsar",
                "longitude": "74.8736788",
                "name": "Amritsar",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Beas River",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Beas River and enjoying the scenic beauty of the town. Enjoying traditional Punjabi cuisine for dinner.",
                "description": "A charming town located on the banks of the Beas River, Malerkot is a gateway to the Punjab Hill Country. Visit the Beas River, the Manjore Fort, and the Durgiana Temple.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "400",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "29.2000",
                "locationName": "Malerkot",
                "longitude": "74.1500",
                "name": "Malerkot",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Sikh Gurudwara",
                "childrenAllowed": "True",
                "dailyLog": "Visiting the Sikh Gurudwara and soaking in the spiritual atmosphere. Enjoying traditional Punjabi food for lunch.",
                "description": "A hidden gem nestled amidst the hills, Dhamiana is a sacred city for pilgrims. Visit the Sikh Gurudwara and the Dhamiana Sahib Gurudwara.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "400",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "29.0000",
                "locationName": "Dhamiana",
                "longitude": "74.0700",
                "name": "Dhamiana",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jullant Town",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the charming town and enjoying the scenic beauty of the surrounding hills. Enjoying traditional Punjabi food for dinner.",
                "description": "Known for its scenic beauty and spiritual significance, Jullant is a hill station with a charming town and a waterfall.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "400",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "60.6429829",
                "locationName": "Jullant",
                "longitude": "23.1180598",
                "name": "Jullant",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Durgiana Temple",
                "childrenAllowed": "True",
                "dailyLog": "Visiting the Durgiana Temple and learning about its religious significance. Enjoying traditional Punjabi food for lunch.",
                "description": "A historic city in the heart of the Punjab region, Phagwara is a gateway to the Kangra Valley. Visit the Durgiana Temple and the Phagwara Fort.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "400",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "31.2206734",
                "locationName": "Phagwara",
                "longitude": "75.7696463",
                "name": "Phagwara",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Golden Temple",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Golden Temple and learning about Sikh traditions. Enjoying traditional Punjabi food for lunch.",
                "description": "A holy town in the lap of the Himalayas, Sriguru is a pilgrimage destination for Hindus and Sikhs. Visit the Golden Temple, the Baba Budha Ashram, and the Jallianwala Bagh.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "20.2065008",
                "locationName": "Sriguru",
                "longitude": "86.1704057",
                "name": "Sriguru",
                "totalTravelTimeInHours": 6.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Pathankot Fort",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Pathankot Fort and the Dhamal Sahib Gurudwara. Enjoying traditional Punjabi food for lunch.",
                "description": "A hill station in the Kangra Valley, Pathankot is a gateway to the Kangra Valley and the Hunder Desert. Visit the Pathankot Fort and the Dhamal Sahib Gurudwara.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "400",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "32.2692452",
                "locationName": "Pathankot",
                "longitude": "75.6528858",
                "name": "Pathankot",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Chaulako Fort",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Chaulako Fort and the Dhamal Sahib Gurudwara. Enjoying traditional Punjabi food for lunch.",
                "description": "A picturesque hill station in the Kangra Valley, Chaulako is a gateway to the Hunder Desert. Visit the Chaulako Fort and the Dhamal Sahib Gurudwara.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "400",
                "estimatedTravelCost": "300",
                "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                "latitude": "28.5000",
                "locationName": "Chaulako",
                "longitude": "74.0000",
                "name": "Chaulako",
                "totalTravelTimeInHours": 5.0
            }
        ],
        "totalTravelTime": "60.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}
  '''
  ;
//   static String delhi =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "India Gate",
//                     "Connaught Place",
//                     "Gurdwara Bangla Sahib"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Hauz Khas Village",
//                     "Jama Masjid"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Chandni Chowk",
//                     "India Gate"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Akshardham Temple",
//                     "Lotus Temple"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Humayun's Tomb",
//                     "Red Fort"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "300",
//             "activities": "1000",
//             "food": "1000",
//             "transport": "1500"
//         },
//         "experiences": [
//             "Red Fort",
//             "Humayun's Tomb",
//             "Lotus Temple",
//             "Akshardham Temple",
//             "India Gate",
//             "Chandni Chowk",
//             "Jama Masjid",
//             "Hauz Khas Village",
//             "Gurdwara Bangla Sahib",
//             "Connaught Place",
//             "India Gate"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Red Fort",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the Mughal architecture and learn about its history.",
//                 "description": "The Red Fort is a historic fort in the heart of Delhi. Built by Mughal emperor Shah Jahan in the 16th century, it is one of the most famous and impressive forts in the world.",
//                 "estimatedFoodCost": "1000",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "1500",
//                 "image_link": "https://images.pexels.com/photos/19528181/pexels-photo-19528181.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.65608095",
//                 "locationName": "Red Fort, Delhi",
//                 "longitude": "77.24079592327321",
//                 "name": "Red Fort",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Humayun's Tomb",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Visit the tomb of one of the most influential Mughal rulers.",
//                 "description": "Humayun's Tomb is the tomb of the Mughal emperor Humayun. It is one of the most important historical sites in Delhi.",
//                 "estimatedFoodCost": "500",
//                 "estimatedStayCost": "250",
//                 "estimatedTravelCost": "1000",
//                 "image_link": "https://images.pexels.com/photos/3126593/pexels-photo-3126593.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.5932856",
//                 "locationName": "Humayun's Tomb, Delhi",
//                 "longitude": "77.2506468018002",
//                 "name": "Humayun's Tomb",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Lotus Temple",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Experience the serene environment and participate in silent prayer or meditation.",
//                 "description": "The Lotus Temple, located in Delhi, is a Bahá'í House of Worship known for its flower-like shape.",
//                 "estimatedFoodCost": "500",
//                 "estimatedStayCost": "400",
//                 "estimatedTravelCost": "1500",
//                 "image_link": "https://images.pexels.com/photos/13701731/pexels-photo-13701731.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.553447419047643",
//                 "locationName": "Lotus Temple, Delhi",
//                 "longitude": "77.25881079019005",
//                 "name": "Lotus Temple",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Akshardham Temple",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the intricate architecture and learn about its history.",
//                 "description": "The Akshardham Temple is a beautiful Hindu temple complex in Delhi. It is one of the largest Hindu temples in the world.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "1000",
//                 "image_link": "https://pixabay.com/get/gb43e5cc1cb9c882fea17c1f1ef137a3949f77b5278decaba57d581278a3b56d1be0ba87c960cbd30b912793cee238b7895c55c4cd46f4d0e10e84e1a1d771efa_1280.jpg",
//                 "latitude": "28.61266198507057",
//                 "locationName": "Akshardham Temple, Delhi",
//                 "longitude": "77.27727863431724",
//                 "name": "Akshardham Temple",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "India Gate",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Visit the iconic war memorial and learn about the Indian soldiers who fought in World War I.",
//                 "description": "India Gate is a war memorial in Delhi dedicated to the Indian soldiers who died in World War I and other conflicts.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "800",
//                 "image_link": "https://images.pexels.com/photos/789750/pexels-photo-789750.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.6129332",
//                 "locationName": "India Gate, Delhi",
//                 "longitude": "77.22949282049879",
//                 "name": "India Gate",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Chandni Chowk",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the vibrant market and learn about the local culture.",
//                 "description": "Chandni Chowk is a bustling market in Delhi. It is a great place to buy anything from clothes to spices to electronics.",
//                 "estimatedFoodCost": "150",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "750",
//                 "image_link": "https://images.pexels.com/photos/12321491/pexels-photo-12321491.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.6559834",
//                 "locationName": "Chandni Chowk, Delhi",
//                 "longitude": "77.2321937",
//                 "name": "Chandni Chowk",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Jama Masjid",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Visit one of the largest mosques in the world and learn about its history.",
//                 "description": "The Jama Masjid is one of the largest mosques in the world. It is a beautiful mosque that is open to all Muslims.",
//                 "estimatedFoodCost": "100",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "500",
//                 "image_link": "https://images.pexels.com/photos/21777994/pexels-photo-21777994.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.6506822",
//                 "locationName": "Jama Masjid, Delhi",
//                 "longitude": "77.23296096363757",
//                 "name": "Jama Masjid",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Hauz Khas Village",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Experience the traditional life in Delhi and learn about its culture.",
//                 "description": "Hauz Khas Village is a neighborhood in Delhi that is known for its traditional architecture. It is a great place to stay for a night or two.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "800",
//                 "image_link": "https://images.pexels.com/photos/26727944/pexels-photo-26727944.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.55385485",
//                 "locationName": "Hauz Khas Village, Delhi",
//                 "longitude": "77.19462569608316",
//                 "name": "Hauz Khas Village",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Gurdwara Bangla Sahib",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the beautiful temple and learn about Sikh culture.",
//                 "description": "Gurdwara Bangla Sahib is a Sikh temple in Delhi. It is one of the most important Sikh temples in the world.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "1000",
//                 "image_link": "https://images.pexels.com/photos/11517257/pexels-photo-11517257.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.62630785",
//                 "locationName": "Gurdwara Bangla Sahib, Delhi",
//                 "longitude": "77.20908510668275",
//                 "name": "Gurdwara Bangla Sahib",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Connaught Place",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the vibrant market and learn about the local culture.",
//                 "description": "Connaught Place is a bustling market in Delhi. It is a great place to buy anything from clothes to electronics to books.",
//                 "estimatedFoodCost": "150",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "750",
//                 "image_link": "https://images.pexels.com/photos/4202325/pexels-photo-4202325.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.6314022",
//                 "locationName": "Connaught Place, Delhi",
//                 "longitude": "77.2193791",
//                 "name": "Connaught Place",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "India Gate",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Visit the iconic war memorial and learn about the Indian soldiers who fought in World War I.",
//                 "description": "India Gate is a war memorial in Delhi that is dedicated to the Indian soldiers who died in World War I. It is a popular tourist destination.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "800",
//                 "image_link": "https://images.pexels.com/photos/789750/pexels-photo-789750.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "28.6129332",
//                 "locationName": "India Gate, Delhi",
//                 "longitude": "77.22949282049879",
//                 "name": "India Gate",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "24.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;
  static String delhi =
  '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Jantar Mantar",
                    "National Gallery of Modern Art",
                    "Hauz Khas Village"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Akshardham Temple",
                    "India Gate",
                    "Connaught Place"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Chandni Chowk",
                    "Jantar Mantar"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "India Gate",
                    "Delhi Haat"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Red Fort",
                    "Qutub Minar"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "200",
            "activities": "200",
            "food": "200",
            "transport": "1500"
        },
        "experiences": [
            "Qutub Minar",
            "Red Fort",
            "Delhi Haat",
            "India Gate",
            "Jantar Mantar",
            "Chandni Chowk",
            "Connaught Place",
            "India Gate",
            "Akshardham Temple",
            "Hauz Khas Village",
            "National Gallery of Modern Art",
            "Jantar Mantar"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Qutub Minar",
                "childrenAllowed": "True",
                "dailyLog": "Exploring the Mughal architecture and history of Delhi, the Qutub Minar is a must-visit for any traveler.",
                "description": "A towering monument to the Mughal era, the Qutub Minar offers stunning views of the city from its observation deck.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "1500",
                "image_link": "https://pixabay.com/get/g644a98fddda295339ba305bd4ca640108a4cd0aae00b1368fef22d097a8b1e30cfa01ebbaf2c966ea179d8f7411f9a8ce315a8a11151ad0ccb9ec35e5d476e50_1280.jpg",
                "latitude": "28.524413",
                "locationName": "Qutub Minar Square",
                "longitude": "77.18545014156862",
                "name": "Qutub Minar",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Red Fort",
                "childrenAllowed": "False",
                "dailyLog": "Discover the grandeur of the Red Fort, a testament to the Mughal Empire, and enjoy the vibrant atmosphere of Old Delhi.",
                "description": "The largest fort in India, the Red Fort is a UNESCO World Heritage Site and a symbol of Mughal architecture. The fort offers stunning views of the city.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "2000",
                "image_link": "https://pixabay.com/get/g719c367353965e13cc3dfadfba829342f40164e8b62e9b0edfbc88f5edbdd6508ecdc3cde27aca7d280db44efcc0ede5f23f9a09cd1df048f49f7934fbe08a22_1280.jpg",
                "latitude": "28.65608095",
                "locationName": "Red Fort Road",
                "longitude": "77.24079592327321",
                "name": "Red Fort",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Delhi Haat",
                "childrenAllowed": "False",
                "dailyLog": "Immerse yourself in the vibrant atmosphere of Delhi's largest market, explore the diverse goods, and enjoy the cultural performances.",
                "description": "A bustling night market offering a wide range of goods and entertainment, the Delhi Haat is a must-visit for any shopper or tourist. ",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/gf3916563ba24ba5541c66a0d4c549818ffdf6bbc996b6c7b5e8f9cd35560ab59b63777dc1cbf726302c3df41584d56aff118f92199b802ef6003f626ed97227d_1280.jpg",
                "latitude": "28.573246500000003",
                "locationName": "Hauz Khas Village",
                "longitude": "77.20739387416522",
                "name": "Delhi Haat",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "India Gate",
                "childrenAllowed": "True",
                "dailyLog": "Pay homage to the fallen soldiers of the Indian Wars, and soak in the historical atmosphere of Delhi.",
                "description": "A majestic war memorial dedicated to those who died in the First World War, the India Gate is a symbol of national unity and patriotism. ",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "1500",
                "image_link": "https://pixabay.com/get/gf87fa2b27b643f0c9757357df3bcf7998e90eac40953a976891f5776717b71c04979031263ca6b2181c3562177c6cb51164ef64380bfa35261d13ee2aa433079_1280.jpg",
                "latitude": "28.6129332",
                "locationName": "Raj Ghat",
                "longitude": "77.22949282049879",
                "name": "India Gate",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jantar Mantar",
                "childrenAllowed": "False",
                "dailyLog": "Delve into the fascinating world of astronomy in the ancient city of Delhi, admire the intricate architecture of the Jantar Mantar, and enjoy the breathtaking city views.",
                "description": "A 17th-century observatory, the Jantar Mantar is one of the most important scientific institutions in India. The complex offers stunning views of the city and a glimpse into the ancient astronomical knowledge of the Mughal era.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "2000",
                "image_link": "https://pixabay.com/get/g96bf9a9a38e80f16fbacc0b79120c3e37d5225a2697b5ca344a7c15d2c4b76c99902be0d7c1a922828e2fb8843a102fe4ccfce81d2f6200adbb99be098bae5d8_1280.jpg",
                "latitude": "26.9247389",
                "locationName": "C.R. Park",
                "longitude": "75.8244663",
                "name": "Jantar Mantar",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Chandni Chowk",
                "childrenAllowed": "True",
                "dailyLog": "Discover the vibrant atmosphere of Delhi's oldest market, engage in shopping, and experience the cultural essence of Old Delhi.",
                "description": "A bustling market known for its vibrant colors and unique shops, Chandni Chowk is a cultural and shopping haven. Explore the narrow lanes and alleyways to find traditional crafts, clothes, and souvenirs.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g39422a055ed6cf89c40f92fcc4577b00782ac64f5a4ada5d7c0fdf747155405176ee27e2716002166cc53102fd241406be567d5ebbe9b00dcae47bb2aff294d8_1280.jpg",
                "latitude": "28.6559834",
                "locationName": "Chandni Chowk Market",
                "longitude": "77.2321937",
                "name": "Chandni Chowk",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Connaught Place",
                "childrenAllowed": "True",
                "dailyLog": "Immerse yourself in the vibrant atmosphere of Delhi's busiest market, explore the diverse shops, and enjoy the cultural experiences of this iconic spot.",
                "description": "One of the busiest places in Delhi, Connaught Place is a bustling market and entertainment hub. Enjoy shopping, street food, and live performances in this vibrant and lively neighborhood.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "1500",
                "image_link": "https://pixabay.com/get/g119b08d1c92dd37fab33f70d6f6ac7e4aec80708d9432ce8e1b5569843e15af27c49f21533772026ca9c027a49294dcc87dad4a04021b10412450e741a7ce0a7_1280.jpg",
                "latitude": "28.6314022",
                "locationName": "Connaught Place",
                "longitude": "77.2193791",
                "name": "Connaught Place",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "India Gate",
                "childrenAllowed": "True",
                "dailyLog": "Pay homage to the fallen soldiers of the Indian Wars, and soak in the historical atmosphere of Delhi.",
                "description": "A majestic war memorial dedicated to those who died in the First World War, the India Gate is a symbol of national unity and patriotism. ",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "1500",
                "image_link": "https://pixabay.com/get/gda2b584fd2a1b4e487bf7ace9ac7bdd27a19c6e734bef28a147b9dbc726b52baa9f1039aa64ca29d080fdc7fa0e3d85d9e2170f513f4c2f23cd1fb4aaf58c280_1280.jpg",
                "latitude": "28.6129332",
                "locationName": "Raj Ghat",
                "longitude": "77.22949282049879",
                "name": "India Gate",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Akshardham Temple",
                "childrenAllowed": "False",
                "dailyLog": "Discover the architectural wonders of the Akshardham Temple and enjoy the stunning city views from its terrace.",
                "description": "An architectural marvel, the Akshardham Temple is a stunning example of Mughal architecture. The complex offers a breathtaking view of the city from its terrace.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "2000",
                "image_link": "https://pixabay.com/get/ga071e9b92b7152cb1eefe870c0a69907550f5974500b45c3415054acb3cf9aeb232e92aa7336d4a21a241dc8757b9628b5f57beead78e04e48c131600f04d505_1280.jpg",
                "latitude": "21.754097950000002",
                "locationName": "C.R. Park",
                "longitude": "72.14177882095044",
                "name": "Akshardham Temple",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Hauz Khas Village",
                "childrenAllowed": "True",
                "dailyLog": "Discover the vibrant atmosphere of Delhi's oldest market, engage in shopping, and experience the cultural essence of Old Delhi.",
                "description": "A bustling market known for its vibrant colors and unique shops, Chandni Chowk is a cultural and shopping haven. Explore the narrow lanes and alleyways to find traditional crafts, clothes, and souvenirs.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/gc6c292e5caf8d2af2bea7bba6f49ed0153fe9c382e999b32f5d7a23cf3d6982c510bdc4de2e39ced4564376f2cae1b08f7d5d51b82d326031da345db4f0322f0_1280.jpg",
                "latitude": "28.5533674",
                "locationName": "Hauz Khas Village",
                "longitude": "77.19484904187614",
                "name": "Hauz Khas Village",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "National Gallery of Modern Art",
                "childrenAllowed": "False",
                "dailyLog": "Explore the diverse collection of modern and contemporary art at the National Gallery of Modern Art, and experience the vibrant atmosphere of Delhi.",
                "description": "One of the largest and most comprehensive modern and contemporary art galleries in India, the National Gallery of Modern Art is a cultural landmark. Explore the diverse collection and exhibitions.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "2000",
                "image_link": "https://pixabay.com/get/g0558eb5d17aaff18ac9ad14d31ce19a2ec8f2343a80487c594157abc46843d95811c8ded9959dc4b8901e68836e092ea16db7b32f98b0b147785421645220cd2_1280.jpg",
                "latitude": "41.91723585",
                "locationName": "Lodhi Garden",
                "longitude": "12.482530882573537",
                "name": "National Gallery of Modern Art",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jantar Mantar",
                "childrenAllowed": "False",
                "dailyLog": "Explore the fascinating world of astronomy in the ancient city of Delhi, admire the intricate instruments and exhibits of the Jantar Mantar, and enjoy the breathtaking city views.",
                "description": "An astronomical observatory built in the 18th century, the Jantar Mantar is a UNESCO World Heritage Site. Explore the intricate instruments and exhibits to understand the ancient science and astronomy of the Delhi region.",
                "estimatedFoodCost": "250",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "2000",
                "image_link": "https://pixabay.com/get/g4e4dd3c149e0545ac6a766df2b0b5f6f1490a6b16e6dd356aab83109923dc969fdba672e9fe2bcb8dc728183d40b016cdb60e7861d3039363a63756c725c8fa1_1280.jpg",
                "latitude": "26.9247389",
                "locationName": "C.R. Park",
                "longitude": "75.8244663",
                "name": "Jantar Mantar",
                "totalTravelTimeInHours": 2.0
            }
        ],
        "totalTravelTime": "17.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}'''
  ;
//   static String california =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "The Getty Center",
//                     "The Hollywood Sign"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "The Santa Monica Pier",
//                     "The Disneyland Resort"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "The Huntington Library & Gardens",
//                     "The Getty Center"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "The Broadmoor",
//                     "The Hearst Castle"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "The Sea Ranch Distillery",
//                     "The Bixby House"
//                 ]
//             },
//             {
//                 "day": "Day 6",
//                 "places": [
//                     "The Saloon",
//                     "The Golden Gate Club"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "150",
//             "activities": "20",
//             "food": "20",
//             "transport": "25"
//         },
//         "experiences": [
//             "Golden Gate Bridge",
//             "Historic saloon with live music and dancing",
//             "Historic bed and breakfast with beautiful gardens",
//             "Distillery with tastings and live entertainment",
//             "Historic hotel with beautiful architecture and a luxurious atmosphere",
//             "Historic hotel with stunning architecture and a variety of amenities",
//             "Museum with a variety of art and architecture",
//             "Historic library with beautiful architecture and a variety of collections",
//             "Theme park with a variety of rides, shows, and attractions",
//             "Historic amusement park with a variety of rides and attractions",
//             "Iconic landmark with stunning city views",
//             "Museum with a variety of art and architecture"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Golden Gate Bridge",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Golden Gate Bridge and enjoying the city views.",
//                 "description": "A historic bar with a great view of the Golden Gate Bridge.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "25",
//                 "image_link": "https://images.pexels.com/photos/2092895/pexels-photo-2092895.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "37.7749",
//                 "locationName": "San Francisco, California",
//                 "longitude": "-122.4324",
//                 "name": "The Golden Gate Club",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic saloon with live music and dancing",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Had a wonderful time dancing the night away at The Saloon!",
//                 "description": "A classic Irish pub with a lively atmosphere.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/7265994/pexels-photo-7265994.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.30906515",
//                 "locationName": "Santa Barbara, California",
//                 "longitude": "-116.88423416035295",
//                 "name": "The Saloon",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic bed and breakfast with beautiful gardens",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the charming streets of Mendocino and enjoying the scenic views.",
//                 "description": "A charming bed and breakfast with a romantic atmosphere.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/26754375/pexels-photo-26754375.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "38.7124",
//                 "locationName": "Mendocino, California",
//                 "longitude": "-123.2461",
//                 "name": "The Bixby House",
//                 "totalTravelTimeInHours": 4.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Distillery with tastings and live entertainment",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Visited the Sea Ranch Distillery for a tasting and enjoyed the beautiful views.",
//                 "description": "A scenic distillery with a tasting room and live entertainment.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/6194836/pexels-photo-6194836.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "37.8133",
//                 "locationName": "Half Moon Bay, California",
//                 "longitude": "-122.803",
//                 "name": "The Sea Ranch Distillery",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic hotel with beautiful architecture and a luxurious atmosphere",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Hearst Castle and enjoying the panoramic ocean views.",
//                 "description": "A luxurious hotel with stunning ocean views.",
//                 "estimatedFoodCost": "40",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/26806589/pexels-photo-26806589.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "37.778",
//                 "locationName": "San Simeon, California",
//                 "longitude": "-119.623",
//                 "name": "The Hearst Castle",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic hotel with stunning architecture and a variety of amenities",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Broadmoor and enjoying the luxurious amenities.",
//                 "description": "A luxurious hotel with a resort-style atmosphere.",
//                 "estimatedFoodCost": "50",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "60",
//                 "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "38.7910375",
//                 "locationName": "Beverly Hills, California",
//                 "longitude": "-104.85138687423111",
//                 "name": "The Broadmoor",
//                 "totalTravelTimeInHours": 4.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Museum with a variety of art and architecture",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Getty Center and enjoying the city views.",
//                 "description": "A contemporary art museum with stunning city views.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "45",
//                 "image_link": "https://images.pexels.com/photos/11540260/pexels-photo-11540260.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0770168",
//                 "locationName": "Los Angeles, California",
//                 "longitude": "-118.47401",
//                 "name": "The Getty Center",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic library with beautiful architecture and a variety of collections",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Huntington Library and Gardens and enjoying the scenic views.",
//                 "description": "A beautiful library with stunning gardens.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/6642516/pexels-photo-6642516.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.12822345",
//                 "locationName": "San Marino, California",
//                 "longitude": "-118.11465055555956",
//                 "name": "The Huntington Library & Gardens",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Theme park with a variety of rides, shows, and attractions",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Disneyland Resort and enjoying the exciting rides and attractions.",
//                 "description": "The happiest place on Earth with a wide variety of attractions and entertainment.",
//                 "estimatedFoodCost": "50",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "60",
//                 "image_link": "https://images.pexels.com/photos/20058578/pexels-photo-20058578.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "33.787",
//                 "locationName": "Anaheim, California",
//                 "longitude": "-118.416",
//                 "name": "The Disneyland Resort",
//                 "totalTravelTimeInHours": 5.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Historic amusement park with a variety of rides and attractions",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Santa Monica Pier and enjoying the beautiful views.",
//                 "description": "A classic amusement park with a beautiful pier and stunning views.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/745236/pexels-photo-745236.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.052",
//                 "locationName": "Santa Monica, California",
//                 "longitude": "-118.32",
//                 "name": "The Santa Monica Pier",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Iconic landmark with stunning city views",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Hollywood Sign and enjoying the panoramic city views.",
//                 "description": "A landmark symbol of Los Angeles with stunning city views.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/21843810/pexels-photo-21843810.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.1340991",
//                 "locationName": "Hollywood, California",
//                 "longitude": "-118.321652",
//                 "name": "The Hollywood Sign",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Museum with a variety of art and architecture",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent the day exploring the Getty Center and enjoying the city views.",
//                 "description": "A contemporary art museum with stunning city views.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/11540260/pexels-photo-11540260.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0770168",
//                 "locationName": "Los Angeles, California",
//                 "longitude": "-118.47401",
//                 "name": "The Getty Center",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "34.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;

//   static String california =
//   '''
//   {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Disneyland Resort",
//                     "San Diego Zoo"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Monterey Bay",
//                     "Redwood National Park"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Sonoma Coast",
//                     "Santa Monica Pier"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "The Getty Center",
//                     "The Broad Museum"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "The Grove",
//                     "Los Angeles Club"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "150",
//             "activities": "20",
//             "food": "20",
//             "transport": "50"
//         },
//         "experiences": [
//             "Hollywood Walk of Fame",
//             "Hollywood Sign",
//             "The Broad Museum",
//             "The Getty Center",
//             "Santa Monica Pier",
//             "Sonoma Coast",
//             "Redwood National Park",
//             "Monterey Bay Harbor",
//             "San Diego Zoo",
//             "Disneyland Resort"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Hollywood Walk of Fame",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent an evening dancing and enjoying the nightlife. Great atmosphere and staff.",
//                 "description": "A lively nightclub with a wide selection of cocktails and live music.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://pixabay.com/get/gb247f3ba4606c7bd4754757e026ac7e67cab39fa54608e3a613b4386227abd0a0f6ab5da29e83d7f9c6322b362693cd10e3bef52ab9292992184d7a53de2b024_1280.jpg",
//                 "latitude": "2.4765106",
//                 "locationName": "Hollywood Boulevard",
//                 "longitude": "-76.5693005",
//                 "name": "Los Angeles Club",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Hollywood Sign",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Had a delicious meal at a local restaurant and enjoyed the bustling atmosphere. Great people watching opportunities.",
//                 "description": "A trendy shopping and dining complex with a variety of stores, restaurants, and bars.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "70",
//                 "image_link": "https://pixabay.com/get/g6e8e78d4a7ad1b85609ea71259e3df355a1560b6d3e352b21e22596e265251e5519526f99164b572e79b653da70e2f5dec311c65d5863f3779ce6232e37c35b1_1280.jpg",
//                 "latitude": "51.67763095",
//                 "locationName": "Hollywood Boulevard",
//                 "longitude": "-0.437399964894748",
//                 "name": "The Grove",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Broad Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Engrossed in a fascinating exhibition about contemporary art. Great place to learn and appreciate different cultures.",
//                 "description": "A contemporary art museum with a diverse collection of exhibitions and installations.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "120",
//                 "estimatedTravelCost": "65",
//                 "image_link": "https://pixabay.com/get/g9c28b11eb080e588fc23098c3fb1479fe7d8ee54ba6239fd9c3c515d54b7b1db55df564df532e746e8c6c190edd4c6e014fbbdcf03489881a8f60f27a35ac246_1280.jpg",
//                 "latitude": "34.0544584",
//                 "locationName": "Hollywood Boulevard",
//                 "longitude": "-118.25059415175812",
//                 "name": "The Broad Museum",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Getty Center",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Admire the panoramic views of the city from the Getty Center. Highly recommended for sunset visits.",
//                 "description": "A stunning museum and cultural center with a breathtaking view of the city.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "80",
//                 "image_link": "https://pixabay.com/get/g62d2d2a16cd2ab630f1c337641d66cc823a48a2b47ee8c4c3f85d3507d4bac12242b882672d28d2b1e4b956f5ff982fc5c75779d5a92f2aa095f975c941d6ec9_1280.jpg",
//                 "latitude": "34.0770168",
//                 "locationName": "Hollywood Hills",
//                 "longitude": "-118.47401",
//                 "name": "The Getty Center",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Santa Monica Pier",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Had a fun-filled evening enjoying the carnival atmosphere. Great place for families and friends.",
//                 "description": "A classic amusement park with a variety of rides, games, and attractions.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://pixabay.com/get/g02fc8b17bcfa419a08b2af59d750d064b02cb293cbd3dd1fe63a48e280b3859477702e66c09702158b9d30e87fa3a79eda69697a8ae82bd204934630e876e432_1280.jpg",
//                 "latitude": "34.00889605",
//                 "locationName": "Santa Monica Pier",
//                 "longitude": "-118.49739978232839",
//                 "name": "Santa Monica Pier",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Sonoma Coast",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spent a relaxing day exploring the stunning beaches and natural beauty of Sonoma Coast.",
//                 "description": "A beautiful coastal area with stunning beaches, cliffs, and redwood forests.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "60",
//                 "image_link": "https://pixabay.com/get/g1f4b759eec9095bfcb7e975d3d1e848638f2064f7ec2e68299aff2cada9bc928fd9fec34afc769304f0556d9c1259e3a018ba9968d06f15e9a33f04931c76ee5_1280.jpg",
//                 "latitude": "28.4225165",
//                 "locationName": "Sonoma County",
//                 "longitude": "-81.6551998",
//                 "name": "Sonoma Coast",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Redwood National Park",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Trecked through the Redwood forests, marveling at the towering trees and breathtaking scenery. Amazing natural wonder.",
//                 "description": "A vast national park with towering redwood trees, scenic beaches, and wildlife.",
//                 "estimatedFoodCost": "35",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "75",
//                 "image_link": "https://pixabay.com/get/g87fbff137fd53501e4f037aa8bee83463aa359831a865dc7e87c9edeb1441ae4108505861e8156799787c6a9a4c57b546cd4eeb6aae9fd434c9156dbe999fe35_1280.jpg",
//                 "latitude": "41.76807455",
//                 "locationName": "Mendocino County",
//                 "longitude": "-124.0505009068986",
//                 "name": "Redwood National Park",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Monterey Bay Harbor",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Had a delightful seafood dinner with waterfront views. Great place to soak in the local atmosphere.",
//                 "description": "A charming town with a historic harbor, waterfront views, and a variety of restaurants and shops.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://pixabay.com/get/gdb3b805d8cc98a3f868d197ec1c1c840cd67cc462b262860312aa9bac2e4c6b84526a38e76e5e707e4fa4f4350db0e0af59e8b025ad436caa602ff4c960e9341_1280.jpg",
//                 "latitude": "36.7999557",
//                 "locationName": "Monterey Bay",
//                 "longitude": "-121.9010668",
//                 "name": "Monterey Bay",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "San Diego Zoo",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Engrossed in a day of discovery and wonder at the diverse collection of animals at the San Diego Zoo.",
//                 "description": "One of the largest zoos in the world with a diverse collection of animals from all over the world.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "75",
//                 "image_link": "https://pixabay.com/get/g7c968eb8bc4eeef0ce4a195086a0fc080e0d6471d751d8111cc42325dec6ed229810964f2bd456b9e045e09d6369a5bd817b5fe832b49054a315f9288feefed4_1280.jpg",
//                 "latitude": "32.73598735",
//                 "locationName": "San Diego",
//                 "longitude": "-117.15065415761478",
//                 "name": "San Diego Zoo",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Disneyland Resort",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Had a magical time exploring the classic rides and attractions at Disneyland Resort.",
//                 "description": "The original Disney park with a classic collection of rides, attractions, and shows.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "60",
//                 "image_link": "https://pixabay.com/get/g60b7f59258b39bfd211c80cfd978ab179bf016a6151cf0e64572c0677a08f83c0220f63ab21912af52dc67572a3ef470df91aa2442898a86a0f7e3fcff2d3e3e_1280.jpg",
//                 "latitude": "33.8090892",
//                 "locationName": "Orange County",
//                 "longitude": "-117.918953",
//                 "name": "Disneyland Resort",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "20.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//   '''
//   ;
  static String california =
  '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Disneyland Resort",
                    "Hollywood Sign"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "The Getty Center",
                    "Santa Barbara Mission"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Griffith Observatory",
                    "Hollywood Walk of Fame"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Monterey Bay Aquarium",
                    "Redwood National and State Parks"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Santa Monica Pier",
                    "San Diego Zoo"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "100",
            "activities": "20",
            "food": "20",
            "transport": "50"
        },
        "experiences": [
            "San Diego Zoo",
            "Santa Monica Pier",
            "Redwood National and State Parks",
            "Monterey Bay Aquarium",
            "Hollywood Walk of Fame",
            "Griffith Observatory",
            "Santa Barbara Mission",
            "The Getty Center",
            "Hollywood Sign",
            "Disneyland Resort"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "San Diego Zoo",
                "childrenAllowed": "True",
                "dailyLog": "Found a lost puppy at the zoo.  Took it to the lost and found and it was reunited with its owner.",
                "description": "One of the largest zoos in the world, the San Diego Zoo is home to over 3,500 animals from all over the world.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g339651ff51ea6e38e20026ca174db6a5b110685df5b90352fadc5ea74b14d1177857195c3d707ee755a3382f6c3b801a6375ff9d0487120f8c124b8ebac6c7da_1280.jpg",
                "latitude": "32.73598735",
                "locationName": "San Diego Zoo",
                "longitude": "-117.15065415761478",
                "name": "San Diego Zoo",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Santa Monica Pier",
                "childrenAllowed": "True",
                "dailyLog": "Met a friendly street performer and learned a few tricks at the pier.",
                "description": "The Santa Monica Pier is a popular amusement park and beach destination in Los Angeles, California. It is one of the longest piers in the United States.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g6869c3b725b966f0808ce6332a4a5e37fba83765706991e839f436840f5e5d056a0d856e060514ef8f02388ebf24b2e7807e7d99163a5c3f27745905b35ac15f_1280.jpg",
                "latitude": "34.00889605",
                "locationName": "Santa Monica Pier",
                "longitude": "-118.49739978232839",
                "name": "Santa Monica Pier",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Redwood National and State Parks",
                "childrenAllowed": "True",
                "dailyLog": "Hiked along the cliffs of Redwood National Park and enjoyed the stunning views of the ocean.",
                "description": "Redwood National and State Parks are a series of redwood forests and coastal beaches in northern California. The park is a UNESCO World Heritage Site.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g2b0f2e81f1df5117897e5f67103e36192ac8a3fa50af040c8107cd2f585039f54a042a9867b0bcd077a294ea0557e53dcc3c6469427377c14b0a065c716d01b3_1280.jpg",
                "latitude": "41.4613522",
                "locationName": "Redwood National and State Parks",
                "longitude": "-124.04809558473124",
                "name": "Redwood National and State Parks",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Monterey Bay Aquarium",
                "childrenAllowed": "True",
                "dailyLog": "Learned about the importance of protecting the ocean at the Monterey Bay Aquarium.",
                "description": "The Monterey Bay Aquarium is one of the most popular aquariums in the world, and for good reason. It features an extensive collection of marine life from all over the globe.",
                "estimatedFoodCost": "35",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/gc9834ffa0e16bfbbf05490f77aac890fcf5ad034d393a6b91bfefd76cc2f8b55a5e1485be6def57438580f45e3a44cb29458cef8df22afc5702e28e2f9749ead_1280.jpg",
                "latitude": "36.61808885",
                "locationName": "Monterey Bay Aquarium",
                "longitude": "-121.90167202803043",
                "name": "Monterey Bay Aquarium",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Hollywood Walk of Fame",
                "childrenAllowed": "True",
                "dailyLog": "Found a vintage camera on the Hollywood Walk of Fame.  Made a photo of the camera and had it developed at a local lab.",
                "description": "The Hollywood Walk of Fame is a red carpet of stars that stretches across Hollywood Boulevard in Los Angeles, California. It is a place where celebrities and other notable individuals have their names immortalized.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g3670cda84793efc0abf08679b147a2849410de6bd126e4591e8e52a52f1c9cc3b55201f5abf9e29d87f01f2235a2619ca684a2b40c4afea7e6029c3722c3fda7_1280.jpg",
                "latitude": "34.1016624",
                "locationName": "Hollywood Walk of Fame",
                "longitude": "-118.3418479",
                "name": "Hollywood Walk of Fame",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Griffith Observatory",
                "childrenAllowed": "True",
                "dailyLog": "Met a friendly scientist at the observatory and learned about the history of astronomy.",
                "description": "The Griffith Observatory is a historic observatory in Los Angeles, California that offers stunning views of the city and the Hollywood sign. It is also home to the planetarium and the Observatory Cafe.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/gcca804a7e8fa31793566c8aba3264595ec70d7436dc10144054ac4c32f3d8196af99db46ab5a78d5f2906caeae0472cae984232c1fc2a167520b231eca8c5dba_1280.jpg",
                "latitude": "34.11821875",
                "locationName": "Griffith Observatory",
                "longitude": "-118.30029332196601",
                "name": "Griffith Observatory",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Santa Barbara Mission",
                "childrenAllowed": "True",
                "dailyLog": "Took a guided tour of the Santa Barbara Mission and learned about its history and significance.",
                "description": "The Santa Barbara Mission is a historic mission in Santa Barbara, California. It is one of the oldest buildings in California and is a UNESCO World Heritage Site.",
                "estimatedFoodCost": "25",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g8beb3a491ece1d4b50bc743cba8d0f5ff970c48faad04b814736526147c422d04e392f73a2fcfed5a98f9134eb6bcd9eef8f4def066f48b3edc5ce28c27da7cf_1280.png",
                "latitude": "34.4383725",
                "locationName": "Santa Barbara Mission",
                "longitude": "-119.71322835704508",
                "name": "Santa Barbara Mission",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Getty Center",
                "childrenAllowed": "True",
                "dailyLog": "Learned about the history of the Getty Center and enjoyed the stunning views of the city from the Getty Center's rooftop terrace.",
                "description": "The Getty Center is a contemporary art museum in Los Angeles, California. It is home to a world-class collection of modern and contemporary art.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g86f7148a76044cc108996e19524bd7f373195d32e2633a61883658c6e028f0d9a53d241612452feb3aaa955967dfae6f861f9ea239a0b76039a517738aaac822_1280.jpg",
                "latitude": "34.0770168",
                "locationName": "The Getty Center",
                "longitude": "-118.47401",
                "name": "The Getty Center",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Hollywood Sign",
                "childrenAllowed": "True",
                "dailyLog": "Found a vintage video camera at the Hollywood Sign and made a video of it.",
                "description": "The Hollywood Sign is a giant outdoor advertising sign in Hollywood, California. It is one of the most iconic landmarks in the world.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g0afe1bfb20434fb96044cf36eaaa734011e90130d793d82199504c35d472babf4aa175c1ea8a30b3e079f4df8b154e162f891b723a265870b88a674ff522c0c8_1280.jpg",
                "latitude": "34.1340991",
                "locationName": "Hollywood Sign",
                "longitude": "-118.321652",
                "name": "Hollywood Sign",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Disneyland Resort",
                "childrenAllowed": "True",
                "dailyLog": "Met a friendly cast member at Disneyland and learned about the history of the park.",
                "description": "Disneyland Resort is a theme park in Anaheim, California. It is home to some of the most famous characters and attractions in the world.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g109f0a44f14e051dd4c08d23eda747af050eef0999363dd628642c096faca67464cb1f4e5ef3e79976fc0517e6dde1ac0a9171b3dc0d86ee6b74e96972d3d45b_1280.jpg",
                "latitude": "33.8090892",
                "locationName": "Disneyland Resort",
                "longitude": "-117.918953",
                "name": "Disneyland Resort",
                "totalTravelTimeInHours": 2.0
            }
        ],
        "totalTravelTime": "21.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}''';

//   static String paris =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Conciergerie",
//                     "Père Lachaise Cemetery"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Canal Saint-Martin",
//                     "Montmartre"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Seine River",
//                     "Palace of Versailles"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Arc de Triomphe",
//                     "Latin Quarter"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Notre Dame Cathedral",
//                     "Louvre Museum"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "70",
//             "activities": "50",
//             "food": "50",
//             "transport": "100"
//         },
//         "experiences": [
//             "Louvre Museum",
//             "Notre Dame Cathedral",
//             "Latin Quarter",
//             "Arc de Triomphe",
//             "Palace of Versailles",
//             "Seine River",
//             "Montmartre",
//             "Canal Saint-Martin",
//             "Père Lachaise Cemetery",
//             "Conciergerie"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Louvre Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Exhausted at the Louvre but were able to witness a stunning sunset over the Tuileries Gardens.",
//                 "description": "The world-renowned Louvre Museum is home to some of the most iconic and famous artworks in history. ",
//                 "estimatedFoodCost": "50",
//                 "estimatedStayCost": "70",
//                 "estimatedTravelCost": "100",
//                 "image_link": "https://images.pexels.com/photos/2363/france-landmark-lights-night.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8611473",
//                 "locationName": "Louvre",
//                 "longitude": "2.33802768704666",
//                 "name": "Louvre Museum",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Notre Dame Cathedral",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Spent the entire afternoon exploring this iconic cathedral and its surrounding areas.",
//                 "description": "The majestic Notre Dame Cathedral is a masterpiece of Gothic architecture. ",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "70",
//                 "image_link": "https://images.pexels.com/photos/1460145/pexels-photo-1460145.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.85293993330237",
//                 "locationName": "Paris",
//                 "longitude": "2.349934283637127",
//                 "name": "Notre Dame Cathedral",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Latin Quarter",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves lost exploring the charming streets and cafes of the Latin Quarter.",
//                 "description": "The Latin Quarter is the historic heart of Paris and is home to some of the most famous universities, bookstores, and cafes in the world. ",
//                 "estimatedFoodCost": "40",
//                 "estimatedStayCost": "60",
//                 "estimatedTravelCost": "80",
//                 "image_link": "https://images.pexels.com/photos/18390956/pexels-photo-18390956.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8487414",
//                 "locationName": "Paris",
//                 "longitude": "2.3420502",
//                 "name": "Latin Quarter",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Arc de Triomphe",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves standing in awe of this iconic landmark and taking in the panoramic view from the top.",
//                 "description": "The Arc de Triomphe is a monument to the victories of the French Empire. ",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/2344/cars-france-landmark-lights.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8737791",
//                 "locationName": "Paris",
//                 "longitude": "2.295037226037673",
//                 "name": "Arc de Triomphe",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Palace of Versailles",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves mesmerized by the opulent chambers and gardens of the Palace of Versailles.",
//                 "description": "The Palace of Versailles is the former residence of the French royal family. ",
//                 "estimatedFoodCost": "100",
//                 "estimatedStayCost": "80",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/13692198/pexels-photo-13692198.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.804425249999994",
//                 "locationName": "Versailles",
//                 "longitude": "2.120285270992599",
//                 "name": "Palace of Versailles",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Seine River",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Took a relaxing stroll along the Seine River and enjoyed the beautiful scenery.",
//                 "description": "The Seine River is the lifeblood of Paris and is a popular spot for locals and tourists alike. ",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/16529980/pexels-photo-16529980.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.85839182737239",
//                 "locationName": "Paris",
//                 "longitude": "2.336878597782903",
//                 "name": "Seine River",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Montmartre",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves lost wandering the streets of Montmartre and soaking in the artistic atmosphere.",
//                 "description": "Montmartre is a charming neighborhood known for its Sacré-Cœur Basilica, artists, and cafes. ",
//                 "estimatedFoodCost": "40",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "70",
//                 "image_link": "https://images.pexels.com/photos/3073666/pexels-photo-3073666.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8867054",
//                 "locationName": "Paris",
//                 "longitude": "2.3415715",
//                 "name": "Montmartre",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Canal Saint-Martin",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves enjoying a leisurely stroll along the Canal Saint-Martin and sampling local delicacies.",
//                 "description": "Canal Saint-Martin is a charming canal lined with cafes, restaurants, and shops. ",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/4390777/pexels-photo-4390777.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8689561",
//                 "locationName": "Paris",
//                 "longitude": "2.3671691",
//                 "name": "Canal Saint-Martin",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Père Lachaise Cemetery",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves lost wandering through the fascinating grounds of Père Lachaise Cemetery.",
//                 "description": "Père Lachaise Cemetery is one of the largest cemeteries in Paris and is home to some of the most famous people in French history. ",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "60",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/15042035/pexels-photo-15042035.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.861129649999995",
//                 "locationName": "Paris",
//                 "longitude": "2.394008682270477",
//                 "name": "Père Lachaise Cemetery",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Conciergerie",
//                 "childrenAllowed": "False",
//                 "dailyLog": "Found ourselves exploring the eerie halls and chambers of the Conciergerie.",
//                 "description": "The Conciergerie is a former prison on the island of St. Patrick's Island. ",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/5273464/pexels-photo-5273464.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "48.8559492",
//                 "locationName": "Paris",
//                 "longitude": "2.3460263",
//                 "name": "Conciergerie",
//                 "totalTravelTimeInHours": 1.0
//             }
//         ],
//         "totalTravelTime": "11.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;
  static String paris =
'''
{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Notre Dame Cathedral",
                    "Montmartre Village",
                    "Jardin des Tuileries"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Louvre Palace",
                    "Père Lachaise Cemetery",
                    "Canal Saint-Martin"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Shakespeare and Company",
                    "Latin Quarter"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Montmartre",
                    "Arc de Triomphe"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Notre Dame Cathedral",
                    "Louvre Museum"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "150",
            "activities": "20",
            "food": "20",
            "transport": "50"
        },
        "experiences": [
            "Louvre Museum",
            "Notre Dame Cathedral",
            "Arc de Triomphe",
            "Montmartre",
            "Latin Quarter",
            "Shakespeare and Company",
            "Canal Saint-Martin",
            "Père Lachaise Cemetery",
            "Louvre Palace",
            "Jardin des Tuileries",
            "Montmartre Village",
            "Notre Dame Cathedral"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Louvre Museum",
                "childrenAllowed": "True",
                "dailyLog": "Found a hidden painting in a back room!",
                "description": "Home to some of the world's most famous works of art, including the Mona Lisa and Venus de Milo.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g5fb9116368ef8d0e21bf7c620e02c29ee9ff8a9e469fa0e80b10d7847e4176cf0a62fb70807a815cd25388a310faa5f93e6e6a53f7ee19a511de6a9b0d48a70a_1280.jpg",
                "latitude": "48.8611473",
                "locationName": "Louvre Park",
                "longitude": "2.33802768704666",
                "name": "Louvre Museum",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Notre Dame Cathedral",
                "childrenAllowed": "True",
                "dailyLog": "Got lost exploring the cathedral's hidden passages!",
                "description": "A magnificent Gothic cathedral that is a UNESCO World Heritage Site.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gba7d41ee495503dc9c8a13bcdb595c92dca4d93943e55f7f1d928198d11f8416a375e89d158cab7aae060fe4b9824ca6f4766235a19d970ad2e2b4acf4124df1_1280.jpg",
                "latitude": "49.60960274999999",
                "locationName": "Île de la Cité",
                "longitude": "6.1315636480309275",
                "name": "Notre Dame Cathedral",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Arc de Triomphe",
                "childrenAllowed": "True",
                "dailyLog": "Gathered stories from locals at a traditional bistro!",
                "description": "The triumphal arch that commemorates the victories of the Roman Republic.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gae32fda6f2fc6d368fe970536b2bd13685f4fc644a925efb7714df1eaa8eaa7fc7e6517fc64a84121e6cc747c9ed820b2d72aff6d55f8ba28a096e81a5b94db9_1280.jpg",
                "latitude": "48.8737791",
                "locationName": "Place du Tertre",
                "longitude": "2.295037226037673",
                "name": "Arc de Triomphe",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Montmartre",
                "childrenAllowed": "True",
                "dailyLog": "Lost in the vibrant streets of Montmartre!",
                "description": "A charming neighborhood known for its art galleries, Sacré-Cœur Basilica, and vibrant nightlife.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "50",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gd62e9ceedc5fdaf1bcd59d649f1b7159e8fbd5c3b651000e82752a19bb545fd59472af867ec5e9f3c0a1af7f3fc0f53c238f5f0799ef67902469eca4dbe1c3de_1280.jpg",
                "latitude": "48.88546185",
                "locationName": "Place du Tertre",
                "longitude": "2.3391535013803098",
                "name": "Montmartre",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Latin Quarter",
                "childrenAllowed": "True",
                "dailyLog": "Found a hidden passage in the Sorbonne Library!",
                "description": "The historic heart of Paris, home to the Sorbonne University, Panthéon, and other landmarks.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gb3e4a245776505bd0c2e6dbfd0a9d1f5d3a9da2000693607a7b1a4ba5f6f6852c4776585155bd0ec3d15683f47ac0ca3fd7b0c5ed55137c6b9e33af29762f186_1280.jpg",
                "latitude": "48.8487414",
                "locationName": "Place du Luxembourg",
                "longitude": "2.3420502",
                "name": "Latin Quarter",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Shakespeare and Company",
                "childrenAllowed": "True",
                "dailyLog": "Found a first edition book in a forgotten corner!",
                "description": "A bookstore that is considered one of the greatest in the world.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "50",
                "estimatedTravelCost": "25",
                "image_link": "https://pixabay.com/get/g9f9d32ccad0bb7effc0ca9676c613c23a63c38d61c75339914842535565821d3ed2041882e10b2517a1fa5dae6e29a91_1280.jpg",
                "latitude": "48.8525747",
                "locationName": "16 Rue de la Huchette",
                "longitude": "2.3471123",
                "name": "Shakespeare and Company",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Canal Saint-Martin",
                "childrenAllowed": "True",
                "dailyLog": "Had dinner with stunning views of the city!",
                "description": "A charming canal that winds through the city, perfect for walking, biking, or taking a boat ride.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gf07cac246c2be5c3a3fdee756d900f9274cb9f0398f1502c4096e4ee892b0dbcee96eda77a003301dadc6609d1f11c423b4966a54b8e324778523f647425f234_1280.jpg",
                "latitude": "48.8689561",
                "locationName": "Champs-Élysées",
                "longitude": "2.3671691",
                "name": "Canal Saint-Martin",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Père Lachaise Cemetery",
                "childrenAllowed": "True",
                "dailyLog": "Gathered stories from locals while exploring the cemetery grounds!",
                "description": "A famous cemetery where many famous people are buried, including Jim Morrison, Oscar Wilde, and Edith Piaf.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gc58a391aabab3bb9210aa1b828f0bb88ced41e27f79a01307d809d45303e9dd0c785888800e414fa61c9c279d04839f8ec4057331efc6fdc8f69e96c15076c0e_1280.jpg",
                "latitude": "48.861129649999995",
                "locationName": "Place du Tertre",
                "longitude": "2.394008682270477",
                "name": "Père Lachaise Cemetery",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Louvre Palace",
                "childrenAllowed": "True",
                "dailyLog": "Found a hidden painting in the Louvre Library!",
                "description": "The largest museum in the world, housing a vast collection of art from all periods of history.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gb1d6ac8e9dbee95ef59d8192dedc0f681abe90f7a5f7e754b2e1aa4cdb55bfe6d865172b7287d2e4816957c071897fbe8817fb42f000b49278bc72d5b360bced_1280.jpg",
                "latitude": "48.86147245",
                "locationName": "Place du Louvre",
                "longitude": "2.3368747442628885",
                "name": "Louvre Palace",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jardin des Tuileries",
                "childrenAllowed": "True",
                "dailyLog": "Had a picnic with breathtaking city views!",
                "description": "A beautiful garden located in the heart of Paris, perfect for a relaxing stroll or picnic.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gdf8df628fcd18f831b91e8b58d8717ef07dd6c9f246147fd4793e4e5bde4b3c80a4703763310f59c8899ad5795d864eb73f07a79852b5dc39a82ec915009ea54_1280.jpg",
                "latitude": "48.863656399999996",
                "locationName": "Place des Tuileries",
                "longitude": "2.3268475947086094",
                "name": "Jardin des Tuileries",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Montmartre Village",
                "childrenAllowed": "True",
                "dailyLog": "Found a hidden courtyard with beautiful views of the city!",
                "description": "A charming village known for its Sacré-Cœur Basilica, Place du Tertre, and artistic atmosphere.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "25",
                "image_link": "https://pixabay.com/get/gf6e4bc2f0f2691aa074f15b65623c9079558e8ec859322c4cea5e827a4e9d64e5ad6ad08cf92b3b21a421d5a1cf266cd519cdce8eb301bf724f7fdad02ed3e77_1280.jpg",
                "latitude": "48.8871135",
                "locationName": "Place du Tertre",
                "longitude": "2.3412818",
                "name": "Montmartre Village",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Notre Dame Cathedral",
                "childrenAllowed": "True",
                "dailyLog": "Had dinner with breathtaking views of Paris from the cathedral terrace!",
                "description": "One of the most iconic cathedrals in the world, famous for its stunning architecture and beautiful stained glass windows.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gabee041754cc60e4e310821e10823773985d89530ba3781aceb5b7fcdf4ac994e86e987a2ac6fd92ffbeb4539785d6b20d6edb5438920ce05df90f0e73b64fb4_1280.jpg",
                "latitude": "49.60960274999999",
                "locationName": "Place du Capitole",
                "longitude": "6.1315636480309275",
                "name": "Notre Dame Cathedral",
                "totalTravelTimeInHours": 3.0
            }
        ],
        "totalTravelTime": "27.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}
''';

//   static String madrid =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Royal Palace of Madrid",
//                     "Reina Sofía Museum",
//                     "Puerta del Sol"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "La Taberna del Pintxo",
//                     "El Tigre"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Mercado San Miguel",
//                     "El Rastro"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "La Latina",
//                     "Museo Reina Sofía"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Plaza Mayor",
//                     "Casa Museo Picasso"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "50",
//             "activities": "15",
//             "food": "15",
//             "transport": "35"
//         },
//         "experiences": [
//             "Museum",
//             "Plaza",
//             "Museum",
//             "Neighborhood",
//             "Market",
//             "Market",
//             "Bullring",
//             "Bar",
//             "Square",
//             "Museum",
//             "Palace"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Entering the vibrant world of Pablo Picasso. His creative spirit is truly inspiring.",
//                 "description": "Museum showcasing the life and work of Spanish painter Pablo Picasso.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "35",
//                 "image_link": "https://images.pexels.com/photos/3680770/pexels-photo-3680770.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "43.36731415",
//                 "locationName": "Calle Arte Sacre",
//                 "longitude": "-8.407003702386179",
//                 "name": "Casa Museo Picasso",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "12:00 PM",
//                 "attraction": "Plaza",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Unwind and soak in the energy of Madrid's heart. A vibrant square with plenty of activities.",
//                 "description": "Central square of Madrid, bustling with life.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "70",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/16121408/pexels-photo-16121408.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.415571342791",
//                 "locationName": "Plaza Mayor",
//                 "longitude": "-3.7079691771635317",
//                 "name": "Plaza Mayor",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Immerse yourself in the world of art. Discover the rich collection of Spanish masters.",
//                 "description": "Art museum housing a vast collection of Spanish and international art.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "75",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/3680770/pexels-photo-3680770.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.408049500000004",
//                 "locationName": "Paseo del Prado",
//                 "longitude": "-3.694421591348541",
//                 "name": "Museo Reina Sofía",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "12:00 AM",
//                 "attraction": "Neighborhood",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the bohemian heart of Madrid. A lively district with plenty of bars and restaurants.",
//                 "description": "Historic neighborhood with a vibrant nightlife scene.",
//                 "estimatedFoodCost": "10",
//                 "estimatedStayCost": "55",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/14507369/pexels-photo-14507369.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.4112911",
//                 "locationName": "Calle Lavapiés",
//                 "longitude": "-3.7083094",
//                 "name": "La Latina",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Market",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Unearth hidden treasures at the heart of Madrid. A treasure trove of vintage finds and forgotten treasures.",
//                 "description": "Historic flea market where you can find anything from clothes and electronics to furniture and antiques.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "60",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/2422970/pexels-photo-2422970.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.40863315",
//                 "locationName": "Plaza de Jesús",
//                 "longitude": "-3.707329519930352",
//                 "name": "El Rastro",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Market",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Indulge in the local culinary scene. A vibrant market with plenty of fresh and delicious produce.",
//                 "description": "Traditional market offering fresh produce, local goods, and other items.",
//                 "estimatedFoodCost": "10",
//                 "estimatedStayCost": "65",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/2959618/pexels-photo-2959618.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.41554691083842",
//                 "locationName": "Plaza Mayor",
//                 "longitude": "-3.7074649030630487",
//                 "name": "Mercado San Miguel",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Bullring",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Step back in time and experience the thrilling spectacle of bullfighting at Madrid's legendary bullring.",
//                 "description": "Madrid's historic bullring, a place where bullfighting is still held.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "70",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/8163147/pexels-photo-8163147.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.43216813750174",
//                 "locationName": "Plaza de Toros de Las Ventas",
//                 "longitude": "-3.6634413070289416",
//                 "name": "Las Ventas Bullring",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "12:00 PM",
//                 "attraction": "Bar",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Gather with fellow travelers and enjoy traditional Spanish hospitality. Immerse yourself in the lively bar scene.",
//                 "description": "Traditional tavern with a vibrant atmosphere and a wide selection of beers and spirits.",
//                 "estimatedFoodCost": "10",
//                 "estimatedStayCost": "55",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/3166785/pexels-photo-3166785.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "36.5077476",
//                 "locationName": "Calle de la Cava Baja",
//                 "longitude": "-4.8871356",
//                 "name": "La Taberna del Pintxo",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Square",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Capture the essence of Madrid's vibrant cultural life. A captivating square that embodies the city's cultural heart.",
//                 "description": "One of the most iconic and beautiful squares in Madrid, perfect for people watching and soaking in the atmosphere.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "70",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/947169/pexels-photo-947169.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.41686295",
//                 "locationName": "Plaza del Sol",
//                 "longitude": "-3.7038761999149656",
//                 "name": "Puerta del Sol",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Step into a world of modern and contemporary art. A stunning museum overlooking the city skyline.",
//                 "description": "Modern and contemporary art museum with a stunning location overlooking the city.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "75",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/8889052/pexels-photo-8889052.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.408049500000004",
//                 "locationName": "Paseo del Prado",
//                 "longitude": "-3.694421591348541",
//                 "name": "Reina Sofía Museum",
//                 "totalTravelTimeInHours": 3.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Palace",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Witness the splendor of the Spanish Royal Family. A breathtaking palace open to the public.",
//                 "description": "Official residence of the Spanish Royal Family, open to the public.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "70",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/1547738/pexels-photo-1547738.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "40.4167403",
//                 "locationName": "Paseo del Prado",
//                 "longitude": "-3.7136222",
//                 "name": "Royal Palace of Madrid",
//                 "totalTravelTimeInHours": 3.0
//             }
//         ],
//         "totalTravelTime": "26.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;
  static String madrid =
  '''
  {
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Catedral de San Francisco",
                    "Casa Velázquez",
                    "Barceloneta Beach"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Reina Sofía Museum",
                    "El Prado Museum",
                    "Parque del Retiro"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Casa Patas",
                    "Museo Reina Sofía"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Plaza Mayor",
                    "Royal Palace of Madrid"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "La Taberna del Pintxo",
                    "Real Club Madrid"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "300",
            "activities": "500",
            "food": "500",
            "transport": "200"
        },
        "experiences": [
            "Nightlife",
            "Music",
            "History",
            "History",
            "Art",
            "Food",
            "Nature",
            "Art",
            "Art",
            "Beach",
            "Art",
            "Architecture"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Nightlife",
                "childrenAllowed": "True",
                "dailyLog": "Partying the night away in Madrid!",
                "description": "A vibrant nightlife hub with a wide range of music styles and performances.",
                "estimatedFoodCost": "500",
                "estimatedStayCost": "300",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/g0538a43cc42aade242d1f4a54f374c957983f7da0c7ac9b0e3f4f986c587353f8e515a0c9919ad5ecebc54c5d35697934cc1ae7de1a615a790452ad737375099_1280.jpg",
                "latitude": "40.54775165",
                "locationName": "Calle de Echegaray",
                "longitude": "-3.9164084626674036",
                "name": "Real Club Madrid",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Music",
                "childrenAllowed": "False",
                "dailyLog": "Cheers to life at La Taberna!",
                "description": "A traditional tavern with a relaxed atmosphere and live music performances.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/ga24ae36a2d885e6e416e778de0ac84a9b778bebfce910fff1396f3333e878fa9de3f24e485cc7221de81d4d3ed69788a1aa23924803b3761a5abe240931fef43_1280.jpg",
                "latitude": "36.5077476",
                "locationName": "Calle del Pintxo",
                "longitude": "-4.8871356",
                "name": "La Taberna del Pintxo",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "History",
                "childrenAllowed": "False",
                "dailyLog": "Exploring the Royal Palace!",
                "description": "The official residence of the Spanish Royal Family, offering a glimpse into Spanish history and culture.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/gc61c0f47a5c3ab84a22d7fd890fcaec86f2a0843f7d1c63c3bced0aa2239a206bf602349bd073aa7fa1f0f3975df930c2a4dec2a1ec5b78bb176fe65d7fdcd92_1280.jpg",
                "latitude": "40.4167403",
                "locationName": "Plaza de Oriente",
                "longitude": "-3.7136222",
                "name": "Royal Palace of Madrid",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "History",
                "childrenAllowed": "False",
                "dailyLog": "Soaking up the vibrant atmosphere of Madrid's Plaza Mayor!",
                "description": "A vibrant square surrounded by historical buildings, ideal for people-watching and enjoying the city's atmosphere.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/ge763820881cfb87efb75f371110971a9ac76e44a997cc06a4539fca90833ba946ef3a35048d52525fe22be0b0d7c61d63c655faa950770b395b0643d9609a90d_1280.jpg",
                "latitude": "19.43271665",
                "locationName": "Plaza Mayor",
                "longitude": "-99.13315966538465",
                "name": "Plaza Mayor",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Art",
                "childrenAllowed": "False",
                "dailyLog": "Immerse yourself in Spanish art at the Reina Sofía Museum!",
                "description": "An art museum housing an impressive collection of Spanish and European paintings, including works by Goya, Velázquez, and Picasso.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/gffd1310d502be8c2c8fe9f046cf103c31865bcd2d69d3f21e5edcdc9296a34a809c27c7ee99607764113b903a3a204760b1eb5fa5348a2ad695cc1ceb8a7e7d6_1280.jpg",
                "latitude": "40.408049500000004",
                "locationName": "Paseo de Olavarria",
                "longitude": "-3.694421591348541",
                "name": "Museo Reina Sofía",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Food",
                "childrenAllowed": "False",
                "dailyLog": "A culinary adventure at Casa Patas!",
                "description": "The world-famous restaurant where the Spanish royal family enjoys traditional cuisine.",
                "estimatedFoodCost": "400",
                "estimatedStayCost": "300",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/ge94ad2b31ec662ec5c5845b9e508ad0d9f13c4f53257fb64bb4c96d9b2aad1436a3bd2b522dba1f366bce9ddc76a7e78e25f35f7d25d9410f778f220222a748e_1280.jpg",
                "latitude": "40.4127198",
                "locationName": "Calle de Echegaray",
                "longitude": "-3.7017271",
                "name": "Casa Patas",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Nature",
                "childrenAllowed": "False",
                "dailyLog": "Connecting with nature in Madrid's Parque del Retiro!",
                "description": "A sprawling park with gardens, lakes, and a zoo, perfect for relaxation and enjoying the city's natural beauty.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/g923885f2ca5f0f32d5d6eb53c341be361afd3b902b441ae128845e4b46357aec0986787064deb07b03a30781d8f64852c9228242b970ac87f81c0021b46ba52b_1280.jpg",
                "latitude": "40.41494595",
                "locationName": "Paseo del Prado",
                "longitude": "-3.68328454639349",
                "name": "Parque del Retiro",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Art",
                "childrenAllowed": "False",
                "dailyLog": "A journey through history at El Prado Museum!",
                "description": "One of the world's most renowned art museums, housing a vast collection of European paintings from the 13th to the 19th century.",
                "estimatedFoodCost": "400",
                "estimatedStayCost": "300",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/gdc5b13b1c1bf2930877fb16aba44b61a3ce090530ebdf5767b4487c689f4012588007be1d9bc5b73aeda47f0fb4d9cbbaf4f65be113edcfce4403df8c752bc73_1280.jpg",
                "latitude": "40.41379255",
                "locationName": "Calle de Echegaray",
                "longitude": "-3.6920378829351304",
                "name": "El Prado Museum",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Art",
                "childrenAllowed": "False",
                "dailyLog": "Discovering contemporary art at Reina Sofía Museum!",
                "description": "A modern art museum with a focus on Spanish and Latin American artists.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/g893722e33d6e9e58e02ad49b67dfa21230d41b8cd2661ff23462a41e4c46476e5e3bcb4445112c0d6d417f13fb5c99b5b7fc19fa69c97845300a0225ac3c762d_1280.jpg",
                "latitude": "40.408049500000004",
                "locationName": "Paseo de Olavarria",
                "longitude": "-3.694421591348541",
                "name": "Reina Sofía Museum",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Beach",
                "childrenAllowed": "False",
                "dailyLog": "Sun, sand, and nightlife at Barceloneta Beach!",
                "description": "A popular beach with sandy shores and a vibrant atmosphere, perfect for sunbathing and enjoying the city's nightlife.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/g98aa9c13dac6f4b0e3fdb043b747ed71d50febcc824d2b754ba19d902cdd9c3c1944e43743a438bc6c963fc617fe13762291c4acbd999e9c77557947c1d86f82_1280.jpg",
                "latitude": "41.37932855",
                "locationName": "Barceloneta",
                "longitude": "2.1929710252091668",
                "name": "Barceloneta Beach",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Art",
                "childrenAllowed": "False",
                "dailyLog": "Unveiling the genius of Casa Velázquez!",
                "description": "A stunning palace with a beautiful garden, showcasing the life and work of the renowned Spanish painter.",
                "estimatedFoodCost": "300",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/gf85aa0e7ce8b6361d0ac5506463a9063640263d1baecf600b5649d13439184af4b82c7314068bb1ead24e463cd18542f53aa253ac94e764325997b657571b7e6_1280.jpg",
                "latitude": "20.007633249999998",
                "locationName": "Paseo de la Castellana",
                "longitude": "-99.21627254999999",
                "name": "Casa Velázquez",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Architecture",
                "childrenAllowed": "False",
                "dailyLog": "A glimpse into history at the Catedral de San Francisco!",
                "description": "A stunning cathedral with a rich history, offering stunning architecture and breathtaking views of the city.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "150",
                "image_link": "https://pixabay.com/get/g7ca3745fc56978c5ece43f983640f1b4c289be443651e0eda4e06b1668c91748439399a69d0c5fa2fbb2041c44a6c22445b6b1df94a00b14a799fad6b02eaa8b_1280.jpg",
                "latitude": "36.5289521",
                "locationName": "Plaza Mayor",
                "longitude": "-6.295318266321253",
                "name": "Catedral de San Francisco",
                "totalTravelTimeInHours": 1.0
            }
        ],
        "totalTravelTime": "12.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}
  ''';

//   static String barcelone =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Gaudí House and Gardens",
//                     "Montjuïc Mountain Park",
//                     "Sagrada Familia"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "La Boqueria Market",
//                     "Camp Nou Stadium"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Picasso Museum",
//                     "Barceloneta Beach"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Las Ramblas",
//                     "Montjuïc Castle"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "El Gothic Quarter",
//                     "Casa Batlló"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "60.0",
//             "activities": "15.0",
//             "food": "15.0",
//             "transport": "100.0"
//         },
//         "experiences": [
//             "Casa Batlló",
//             "El Gothic Quarter",
//             "Montjuïc Castle",
//             "Las Ramblas",
//             "Barceloneta Beach",
//             "Picasso Museum",
//             "Camp Nou Stadium",
//             "La Boqueria Market",
//             "Sagrada Familia",
//             "Montjuïc Mountain Park",
//             "Gaudí House and Gardens"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Casa Batlló",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the Gothic Quarter, admire the architecture, and visit the Casa Batlló museum.",
//                 "description": "Gothic palace, one of the most famous and impressive buildings in Barcelona. It houses a vast collection of art and furniture.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "60.0",
//                 "estimatedTravelCost": "100.0",
//                 "image_link": "https://images.pexels.com/photos/17686988/pexels-photo-17686988.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.3915446",
//                 "locationName": "Passeig del Rei",
//                 "longitude": "2.1646961326302048",
//                 "name": "Casa Batlló",
//                 "totalTravelTimeInHours": 1.5
//             },
//             {
//                 "VisitTime": "11:00 AM",
//                 "attraction": "El Gothic Quarter",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Get lost in the narrow streets of the Gothic Quarter, admire the architecture, and visit the Barcelona Cathedral.",
//                 "description": "Historic neighborhood with narrow streets, charming squares, and medieval buildings. It's the heart of Barcelona.",
//                 "estimatedFoodCost": "10.0",
//                 "estimatedStayCost": "40.0",
//                 "estimatedTravelCost": "50.0",
//                 "image_link": "https://images.pexels.com/photos/13549228/pexels-photo-13549228.png?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.3833947",
//                 "locationName": "Plaça de Catalunya",
//                 "longitude": "2.1769119",
//                 "name": "El Gothic Quarter",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Montjuïc Castle",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the medieval castle grounds, museum, and Mirador de Montjuïc for breathtaking city views.",
//                 "description": "Hilltop castle with stunning views of Barcelona. Explore the castle grounds, museum, and the Mirador de Montjuïc.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "150.0",
//                 "image_link": "https://images.pexels.com/photos/15644472/pexels-photo-15644472.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.3633153",
//                 "locationName": "Montjuïc Mountain",
//                 "longitude": "2.165996064887396",
//                 "name": "Montjuïc Castle",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "12:00 PM",
//                 "attraction": "Las Ramblas",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Enjoy the bustling atmosphere of Las Ramblas, sample local tapas and Catalan dishes, and soak up the vibrant city life.",
//                 "description": "Famous street lined with shops, restaurants, and bars. Enjoy the vibrant atmosphere and people-watching.",
//                 "estimatedFoodCost": "10.0",
//                 "estimatedStayCost": "50.0",
//                 "estimatedTravelCost": "50.0",
//                 "image_link": "https://images.pexels.com/photos/23961607/pexels-photo-23961607.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-2.1900448",
//                 "locationName": "Las Ramblas",
//                 "longitude": "-80.0034662",
//                 "name": "Las Ramblas",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "16:00 PM",
//                 "attraction": "Barceloneta Beach",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Relax on the beautiful beaches of Barceloneta, enjoy the vibrant nightlife, and try your luck at the beach clubs.",
//                 "description": "Popular beach with sandy beach, lively beach clubs, and a vibrant nightlife scene. Perfect for relaxing or enjoying the sun.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "100.0",
//                 "image_link": "https://images.pexels.com/photos/24030050/pexels-photo-24030050.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.37932855",
//                 "locationName": "Passeig de Gracia",
//                 "longitude": "2.1929710252091668",
//                 "name": "Barceloneta Beach",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Picasso Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the Picasso Museum and admire the iconic works of Pablo Picasso. Learn about the artist's life and career.",
//                 "description": "Museum housing a world-renowned collection of Pablo Picasso's paintings. Explore the iconic works and the artist's life.",
//                 "estimatedFoodCost": "10.0",
//                 "estimatedStayCost": "50.0",
//                 "estimatedTravelCost": "60.0",
//                 "image_link": "https://images.pexels.com/photos/19063438/pexels-photo-19063438.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.38510385",
//                 "locationName": "Plaça Espanya",
//                 "longitude": "2.1812015473635733",
//                 "name": "Picasso Museum",
//                 "totalTravelTimeInHours": 1.5
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Camp Nou Stadium",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Experience the vibrant atmosphere of Camp Nou Stadium and enjoy the stadium tour or watch a football match.",
//                 "description": "Stadium of FC Barcelona, one of the most successful clubs in Spain. Enjoy a stadium tour or watch a match in the lively stadium atmosphere.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "150.0",
//                 "image_link": "https://images.pexels.com/photos/13043589/pexels-photo-13043589.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "6.0694313",
//                 "locationName": "Carrer del Prat",
//                 "longitude": "-8.1344426",
//                 "name": "Camp Nou Stadium",
//                 "totalTravelTimeInHours": 1.5
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "La Boqueria Market",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the bustling La Boqueria Market, try local delicacies, and find unique souvenirs for friends and family.",
//                 "description": "Large market with a vast selection of fresh produce, local goods, and culinary delights. It's a great place to sample local cuisine and find unique souvenirs.",
//                 "estimatedFoodCost": "10.0",
//                 "estimatedStayCost": "40.0",
//                 "estimatedTravelCost": "50.0",
//                 "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.870453",
//                 "locationName": "La Boqueria Market",
//                 "longitude": "2.133501",
//                 "name": "La Boqueria Market",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Sagrada Familia",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the Gothic architecture and stunning interior of the Sagrada Familia, enjoy panoramic city views from the tower, and admire the vibrant facade.",
//                 "description": "Basilica with intricate architecture, known for its colorful facade and stunning interior. Explore the Gothic architecture and enjoy panoramic city views from the tower.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "150.0",
//                 "image_link": "https://images.pexels.com/photos/819764/pexels-photo-819764.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.4035046",
//                 "locationName": "Passeig del Rei",
//                 "longitude": "2.174428284189003",
//                 "name": "Sagrada Familia",
//                 "totalTravelTimeInHours": 1.5
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Montjuïc Mountain Park",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the beautiful scenery of Montjuïc Mountain Park, enjoy hiking or cycling, and take in the panoramic city views.",
//                 "description": "Mountain park with stunning city views, featuring panoramic vistas of the coastline and the harbor. Enjoy hiking, cycling, or simply relaxing in this scenic oasis.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "100.0",
//                 "image_link": "https://images.pexels.com/photos/23879439/pexels-photo-23879439.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.871784",
//                 "locationName": "Montjuïc Mountain",
//                 "longitude": "2.151053",
//                 "name": "Montjuïc Mountain Park",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Gaudí House and Gardens",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the unique designs of Antoni Gaudí's house and admire the stunning gardens with panoramic city views.",
//                 "description": "Private residence and art gallery of the famous Spanish architect Antoni Gaudí. Explore his innovative designs and enjoy the stunning gardens with panoramic city views.",
//                 "estimatedFoodCost": "15.0",
//                 "estimatedStayCost": "80.0",
//                 "estimatedTravelCost": "150.0",
//                 "image_link": "https://images.pexels.com/photos/158148/ruhl-house-home-galveston-texas-158148.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "41.870403",
//                 "locationName": "Passeig del Pintor",
//                 "longitude": "2.132814",
//                 "name": "Gaudí House and Gardens",
//                 "totalTravelTimeInHours": 1.5
//             }
//         ],
//         "totalTravelTime": "16.5 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;
  static String barcelone =
  '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "The Joan Miró Foundation",
                    "Tibidabo Monastery",
                    "Barceloneta Aquarium"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Montjuïc Hill",
                    "Casa Batlló"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "The Gothic Quarter",
                    "Barceloneta Jazz Club"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "El Tigre",
                    "Sagrada Família"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Barceloneta Beach",
                    "Casa Milà"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "150",
            "activities": "25",
            "food": "25",
            "transport": "200"
        },
        "experiences": [
            "Casa Milà",
            "Barcelona Beach",
            "Sagrada Família",
            "El Tigre",
            "Barceloneta Jazz Club",
            "Gothic Quarter",
            "Casa Batlló",
            "Montjuïc Hill",
            "Barceloneta Aquarium",
            "Tibidabo Monastery",
            "The Joan Miró Foundation"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Casa Milà",
                "childrenAllowed": "True",
                "dailyLog": "Had dinner with breathtaking city views. Highly recommend the place.",
                "description": "A charming restaurant housed in a 14th-century building with stunning city views.",
                "estimatedFoodCost": "25",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/ga9d278dbc2d28e4c16e92230201c6e9001736538f9ed29e0940cfbcc832bdf427128edac2cedcb09cb07d070b8eaabefedad4ff54326ec874df90f5f3a59f52d_1280.jpg",
                "latitude": "41.39539955",
                "locationName": "Passeig de la Barceloneta",
                "longitude": "2.161762102712899",
                "name": "Casa Milà",
                "totalTravelTimeInHours": 30.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Barcelona Beach",
                "childrenAllowed": "True",
                "dailyLog": "Had a refreshing swim in the Mediterranean Sea. Perfect for a hot day.",
                "description": "The most popular beach in Barcelona, ideal for swimming, sunbathing, and people-watching.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "50",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g8a20d67f8ffde833eefec7efc2c10931c8979f767a376399f61011b16f81d40cf6dadb3ef26ffbb77ace54f356c9ebd3bad1af84eba1ec974c4e7953aa7f7223_1280.jpg",
                "latitude": "41.37932855",
                "locationName": "Passeig de la Barceloneta",
                "longitude": "2.1929710252091668",
                "name": "Barceloneta Beach",
                "totalTravelTimeInHours": 30.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Sagrada Família",
                "childrenAllowed": "True",
                "dailyLog": "Visited this iconic cathedral and was blown away by its beauty and history.",
                "description": "A breathtaking Gothic cathedral with stunning architecture and a fascinating history.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/g8ba116057e38a16ad39323c65aaeba7181a90a0f069e1b8b78ef42e88eea2d9f775f229185d048baebb405da3be67c8c4269738d18c3c54d0da1b5a633c8f074_1280.jpg",
                "latitude": "41.4035046",
                "locationName": "Plaça del Rei",
                "longitude": "2.174428284189003",
                "name": "Sagrada Família",
                "totalTravelTimeInHours": 45.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "El Tigre",
                "childrenAllowed": "True",
                "dailyLog": "Had a memorable dining experience with an innovative and experimental menu.",
                "description": "A unique restaurant with an unusual concept and an innovative menu.",
                "estimatedFoodCost": "25",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "250",
                "image_link": "https://pixabay.com/get/g140038d00f843fcd0d465d153d162b851ae69817b4e9cc07748305eed6f5c54814254fc3d814a8368186ba3bb0eae76eafc2a29e7e9561b114aa6a10269427d2_1280.jpg",
                "latitude": "8.8862119",
                "locationName": "Passatge de la Pau",
                "longitude": "-64.2488754",
                "name": "El Tigre",
                "totalTravelTimeInHours": 45.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Barceloneta Jazz Club",
                "childrenAllowed": "True",
                "dailyLog": "Had an unforgettable night of live music and dancing at the Barceloneta Jazz Club.",
                "description": "A legendary jazz club with live music performances, hosting renowned musicians and local talents.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "20",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gf4042136f7b8bb8ce0ea03bcecf5b9f1ef763a7b9a72535c999b8b5ea8cb7f12b7e4c914952994aaa7276b07ec3a1d045e7c6fb9633041a934fb268bbd09dca2_1280.jpg",
                "latitude": "41.230503",
                "locationName": "Carrer de Doctor Espada",
                "longitude": "2.135001",
                "name": "Barceloneta Jazz Club",
                "totalTravelTimeInHours": 20.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Gothic Quarter",
                "childrenAllowed": "True",
                "dailyLog": "Delved into the charming streets of the Gothic Quarter and enjoyed the vibrant atmosphere.",
                "description": "A charming medieval neighborhood with narrow streets, beautiful architecture, and a vibrant atmosphere.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g4d0cb9749fbb4a837ac7625347b0c228198bfe0d36d819bf132b585fd7d8a9da1681143ea5dc0670147738304e1d428cf16de7ec8388d2bff112755eed1e56f6_1280.jpg",
                "latitude": "41.233523",
                "locationName": "Plaça de la Catalunya",
                "longitude": "2.125016",
                "name": "The Gothic Quarter",
                "totalTravelTimeInHours": 25.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Casa Batlló",
                "childrenAllowed": "True",
                "dailyLog": "Had an enlightening visit to the Casa Batlló and learned about the life and work of Antoni Gaudí.",
                "description": "A museum dedicated to the life and work of the renowned Catalan architect Antoni Gaudí.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g09d21c7d7d457e64605eba18a78d3e5ce23c0268aed67f946e2a639cfa83f259fd47b07da5854ff124931ac875eb4bd48ffa67c5ff67da239fd5e8ce5723f2c1_1280.jpg",
                "latitude": "41.3915446",
                "locationName": "Carrer del Pintor",
                "longitude": "2.1646961326302048",
                "name": "Casa Batlló",
                "totalTravelTimeInHours": 45.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Montjuïc Hill",
                "childrenAllowed": "True",
                "dailyLog": "Took in the panoramic city views from Montjuïc Hill. Perfect for a relaxing afternoon.",
                "description": "A hilltop park with stunning city views and a variety of attractions.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/gffaceef7ed9abf1ac81d7b6ef79cb29edaf30d1fc38f1b6e554e78ce0218d8a58f7ba6444e3088abda9f2994b99be9ef26efbabf5c9e8eef9a02ae23786e7bfd_1280.jpg",
                "latitude": "41.230496",
                "locationName": "Montjuïc",
                "longitude": "2.122211",
                "name": "Montjuïc Hill",
                "totalTravelTimeInHours": 30.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Barceloneta Aquarium",
                "childrenAllowed": "True",
                "dailyLog": "Had a fascinating visit to the Barceloneta Aquarium and learned about marine life.",
                "description": "A beautiful aquarium with a variety of marine life and educational exhibits.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gd155955f7cdee94144d4ec7e74fb8a0df6de09f7c4c3e1d0060c14e91615616deca77adbd2488d5d2f1ea222c18937ea387c0f4d8eed372f5c5cb7c3790c998e_1280.jpg",
                "latitude": "41.230503",
                "locationName": "Carrer de Doctor Espada",
                "longitude": "2.135003",
                "name": "Barceloneta Aquarium",
                "totalTravelTimeInHours": 45.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Tibidabo Monastery",
                "childrenAllowed": "True",
                "dailyLog": "Visited the tranquil Tibidabo Monastery and enjoyed the stunning scenery.",
                "description": "A beautiful 13th-century monastery with stunning architecture and a peaceful atmosphere.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g8ab1ba738f3902e98c36995342b6181652b8e38ca54a8c429d42ad2b2362a551866de2d7109a08d62fff80cbd3c9cdb2be0e96114f11c9f0b89c588233c1bf35_1280.jpg",
                "latitude": "41.224525",
                "locationName": "Passatge del Valldemossa",
                "longitude": "2.120067",
                "name": "Tibidabo Monastery",
                "totalTravelTimeInHours": 30.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Joan Miró Foundation",
                "childrenAllowed": "True",
                "dailyLog": "Delved into the world of Joan Miró and learned about his life and work at the Joan Miró Foundation.",
                "description": "A museum dedicated to the work of the renowned Catalan artist Joan Miró.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "100",
                "image_link": "https://pixabay.com/get/g3853fe934057cd375765c1b028dcb0211837ec572a4286d59ae2b5261fe47ef4a351bb0dbf3ac24b5ab7b19fe036e5a9e676057f8b55bff7913760d2ff5aadf1_1280.jpg",
                "latitude": "41.233523",
                "locationName": "Carrer de Sant Pau",
                "longitude": "2.125016",
                "name": "The Joan Miró Foundation",
                "totalTravelTimeInHours": 45.0
            }
        ],
        "totalTravelTime": "390.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}''';
//   static String dubai =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Dubai Marina",
//                     "Al Fahidi Historical Neighbourhood",
//                     "Jumeirah Beach Residence"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Dubai Miracle Garden",
//                     "Global Village"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Dubai Frame",
//                     "Dubai Museum"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Dubai Miracle Garden",
//                     "The Atlantis The Palm"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Dubai Marina Beach",
//                     "Dubai Fountains"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "300",
//             "activities": "100",
//             "food": "100",
//             "transport": "500"
//         },
//         "experiences": [
//             "Dubai Fountains",
//             "Dubai Marina Beach",
//             "The Atlantis The Palm",
//             "Dubai Miracle Garden",
//             "Dubai Museum",
//             "Dubai Frame",
//             "Global Village",
//             "Dubai Miracle Garden",
//             "Jumeirah Beach Residence",
//             "Al Fahidi Historical Neighborhood",
//             "Dubai Marina"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Fountains",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Fountains offer stunning views of the city skyline and the surrounding area.",
//                 "description": "One of the world's most iconic landmarks, the Dubai Fountains are a beautiful display of water, light and sound.",
//                 "estimatedFoodCost": "100",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "500",
//                 "image_link": "https://images.pexels.com/photos/1064766/pexels-photo-1064766.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "35.2109427",
//                 "locationName": "Dubai",
//                 "longitude": "-0.6172641",
//                 "name": "Dubai Fountains",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Marina Beach",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Marina Beach is a great place to relax and enjoy the sun, sand and sea.",
//                 "description": "A beautiful beach with stunning views of the Dubai skyline.",
//                 "estimatedFoodCost": "150",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/1040795/pexels-photo-1040795.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.08078675",
//                 "locationName": "Dubai",
//                 "longitude": "55.13368389952301",
//                 "name": "Dubai Marina Beach",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Atlantis The Palm",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Atlantis The Palm is a great hotel with stunning views of the Dubai skyline.",
//                 "description": "A luxurious hotel with a wide range of activities and attractions, The Atlantis The Palm is a great place to stay in Dubai.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "500",
//                 "estimatedTravelCost": "400",
//                 "image_link": "https://images.pexels.com/photos/9400828/pexels-photo-9400828.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.132955",
//                 "locationName": "Dubai",
//                 "longitude": "55.1186685",
//                 "name": "The Atlantis The Palm",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Miracle Garden",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Miracle Garden is a magical place with something to see and do in the world.",
//                 "description": "A magical garden with over 1 billion flowers, the Dubai Miracle Garden is a great place to relax and enjoy the beauty of nature.",
//                 "estimatedFoodCost": "100",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/14100885/pexels-photo-14100885.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.05972345",
//                 "locationName": "Dubai",
//                 "longitude": "55.24459791687957",
//                 "name": "Dubai Miracle Garden",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Museum",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Museum is a great place to learn about the history of Dubai.",
//                 "description": "The oldest museum in the Arab world, the Dubai Museum is a great place to learn about the history of Dubai.",
//                 "estimatedFoodCost": "50",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/574313/pexels-photo-574313.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.2639742",
//                 "locationName": "Dubai",
//                 "longitude": "55.2959381",
//                 "name": "Dubai Museum",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Frame",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Frame is an iconic tower that offers stunning views of the city skyline.",
//                 "description": "The Dubai Frame is an iconic tower that offers stunning views of the city skyline.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/3873672/pexels-photo-3873672.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.23543385",
//                 "locationName": "Dubai",
//                 "longitude": "55.300429250082075",
//                 "name": "Dubai Frame",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Global Village",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Global Village is a large outdoor complex with a wide range of attractions and activities, perfect for families and children.",
//                 "description": "The Global Village is a large outdoor complex with a wide range of attractions and activities, perfect for families and children.",
//                 "estimatedFoodCost": "150",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/9324414/pexels-photo-9324414.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "36.096319199999996",
//                 "locationName": "Dubai",
//                 "longitude": "140.10514998539915",
//                 "name": "Global Village",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Miracle Garden",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Dubai Miracle Garden is a great place to relax and enjoy the beauty of nature.",
//                 "description": "A magical garden with over 1 billion flowers, the Dubai Miracle Garden is a great place to relax and enjoy the beauty of nature.",
//                 "estimatedFoodCost": "100",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/14100885/pexels-photo-14100885.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.05972345",
//                 "locationName": "Dubai",
//                 "longitude": "55.24459791687957",
//                 "name": "Dubai Miracle Garden",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Jumeirah Beach Residence",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The Jumeirah Beach Residence is a great place to stay in Dubai with stunning views of the city skyline.",
//                 "description": "A luxurious hotel with stunning views of the Dubai skyline, Jumeirah Beach Residence is a great place to stay in Dubai.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "500",
//                 "estimatedTravelCost": "400",
//                 "image_link": "https://images.pexels.com/photos/565324/pexels-photo-565324.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.0778021",
//                 "locationName": "Dubai",
//                 "longitude": "55.13518094856796",
//                 "name": "Jumeirah Beach Residence",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Al Fahidi Historical Neighborhood",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Al Fahidi Historical Neighborhood is a charming neighborhood with a rich history, perfect for wandering around and soaking up the atmosphere.",
//                 "description": "A charming neighborhood with a rich history, Al Fahidi Historical Neighborhood is a great place to wander around and soak up the atmosphere.",
//                 "estimatedFoodCost": "50",
//                 "estimatedStayCost": "100",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/7244477/pexels-photo-7244477.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.264230050000002",
//                 "locationName": "Dubai",
//                 "longitude": "55.30016997004582",
//                 "name": "Al Fahidi Historical Neighbourhood",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Dubai Marina",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Dubai Marina is a great place to spend a day out in the sun with a wide range of activities and attractions.",
//                 "description": "A large artificial marina with a wide range of activities and attractions, Dubai Marina is a great place to spend a day out in the sun.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "400",
//                 "image_link": "https://images.pexels.com/photos/1470405/pexels-photo-1470405.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "25.0786415",
//                 "locationName": "Dubai",
//                 "longitude": "55.1352524",
//                 "name": "Dubai Marina",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "16.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;

  static String dubai =
'''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Dubai Fountain Show",
                    "Dubai Frame",
                    "Dubai Miracle Garden"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Al Fahidi Village",
                    "Heritage Hotel",
                    "The Pointe"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Dubai Marina Walk",
                    "Dubai Museum"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Dubai Mall",
                    "Dubai Miracle Garden"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "The Dubai Fountain",
                    "Goldman's Dubai"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "3000",
            "activities": "200",
            "food": "200",
            "transport": "400"
        },
        "experiences": [
            "Dubai Fountain Show",
            "Dubai Fountain Show",
            "Dubai Miracle Garden",
            "Dubai Mall",
            "Dubai Museum",
            "Dubai Marina Walk",
            "The Pointe",
            "Heritage Hotel",
            "Al Fahidi Village",
            "Dubai Miracle Garden",
            "Dubai Frame",
            "Dubai Fountain Show"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Fountain Show",
                "childrenAllowed": "True",
                "dailyLog": "Live music and breathtaking performances by international artists.",
                "description": "The epitome of luxury and entertainment, Goldman's offers an unparalleled dining and nightlife experience.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "3000",
                "estimatedTravelCost": "400",
                "image_link": "https://pixabay.com/get/g5d80700c0b3a43dea879912c75f11870d5d40324b8321c03a1bf51612f2a25fb5ccdfd47d80ce0591160529ee906e62dc445d4f97ea05a92014bdf716520b0be_1280.jpg",
                "latitude": "13.7530",
                "locationName": "Dubai Marina",
                "longitude": "55.0521",
                "name": "Goldman's Dubai",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Fountain Show",
                "childrenAllowed": "False",
                "dailyLog": "A spectacle of creativity and beauty.",
                "description": "A mesmerizing choreographed water show that takes place against the backdrop of the Dubai skyline. Open daily from 18:00 to 22:00.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/g68fc6b6a0c83630e7e5305215a762a9584dafe8b48193894482b8f819eb4d10fe90bb624837a08ad9f2692591acb82034c71b6fe391d83a3b916394706ffe39c_1280.jpg",
                "latitude": "13.7530",
                "locationName": "Dubai Marina",
                "longitude": "55.0521",
                "name": "The Dubai Fountain",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Miracle Garden",
                "childrenAllowed": "True",
                "dailyLog": "A magical place where fantasy comes to life.",
                "description": "A world of wonder where nature and technology collide. The Dubai Miracle Garden offers a variety of experiences, including a rainforest, a desert landscape, and a children's world.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "300",
                "image_link": "https://pixabay.com/get/geed211207105c1ee7b5ef7737f8adc1685bcfd2f4792b26d98175a879f09d7665dd038aaaef78017e4ce858b2cfc563c9f697c4ff6136c58f20174e797bf5e77_1280.jpg",
                "latitude": "25.05972345",
                "locationName": "Dubai",
                "longitude": "55.24459791687957",
                "name": "Dubai Miracle Garden",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Mall",
                "childrenAllowed": "True",
                "dailyLog": "Endless shopping and entertainment possibilities.",
                "description": "The world's largest shopping mall with over 1,200 stores and 1,300 restaurants. Explore luxury brands, designer boutiques, and a wide variety of entertainment options.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "400",
                "image_link": "https://pixabay.com/get/g3f3850fdcbeef4a4ede71e59a7f8a3020679c897092be77651f1a18a9b918f9c3e0af80ef62953dad035e273f0c7fd85511880b1263fd94ad8cac5c2947cb321_1280.jpg",
                "latitude": "25.1970428",
                "locationName": "Dubai",
                "longitude": "55.278950252409786",
                "name": "Dubai Mall",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Museum",
                "childrenAllowed": "True",
                "dailyLog": "A valuable insight into Dubai's past and present.",
                "description": "A comprehensive museum that showcases the rich history and culture of Dubai. Explore ancient artifacts, learn about the city's modern history, and get a glimpse of Emirati culture.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/gc5c68b568574e8e55a82ef9de814bcbe4337a757fc166c6e426390605c059fb422bef98df7c3718911a483c39de571171e9b1a590314840e28f319ca0affe2ef_1280.jpg",
                "latitude": "25.2639742",
                "locationName": "Dubai",
                "longitude": "55.2959381",
                "name": "Dubai Museum",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Marina Walk",
                "childrenAllowed": "True",
                "dailyLog": "A picturesque spot for people-watching and enjoying the vibrant atmosphere.",
                "description": "A waterfront promenade that offers stunning views of the Dubai skyline. Enjoy a leisurely stroll or enjoy the vibrant atmosphere of the area with various restaurants, bars, and shops.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/ge151fca3510e1ef15e0ddfe78085c35a1ac0d6e0adfb3fc5513b34283890a5cd6b191f70c5423f9506c8ff4b9e9829fab5663a720d69915b016c266ea3b92f0f_1280.jpg",
                "latitude": "25.085557299999998",
                "locationName": "Dubai Marina",
                "longitude": "55.147607699999995",
                "name": "Dubai Marina Walk",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Pointe",
                "childrenAllowed": "True",
                "dailyLog": "A luxurious oasis for discerning residents seeking a vibrant social atmosphere.",
                "description": "A chic and sophisticated residential and leisure destination with a unique design and lifestyle. Enjoy breathtaking views of the Dubai Marina from this exclusive spot.",
                "estimatedFoodCost": "200",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "400",
                "image_link": "https://pixabay.com/get/gc95e62997ddf2542151852ee32fb91698ed8ad6f814317d2ae1b9590ecb7650b236eec2bac22375f700833c0d569f718816dbca22fb359da11ed780c235ef064_1280.jpg",
                "latitude": "36.8591692",
                "locationName": "Dubai Marina",
                "longitude": "-76.3598631",
                "name": "The Pointe",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Heritage Hotel",
                "childrenAllowed": "True",
                "dailyLog": "A glimpse into Dubai's cultural heritage and traditional charm.",
                "description": "A historic landmark with a rich heritage dating back to the early 20th century. Experience authentic Emirati hospitality and enjoy traditional architecture and amenities.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/g19e18e55dba97586a0e5c7f1485406c1e7ef962957aad124f3cbd74287f76a4c814bb318b10376d435f907927cc993586ad13da5466e137030a766673524b07b_1280.jpg",
                "latitude": "40.7432835",
                "locationName": "Dubai",
                "longitude": "-73.9900361",
                "name": "Heritage Hotel",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Al Fahidi Village",
                "childrenAllowed": "True",
                "dailyLog": "A taste of authentic Dubai life with a vibrant atmosphere.",
                "description": "A charming neighborhood with traditional houses and vibrant atmosphere. Enjoy a stroll through the lively streets, enjoy traditional dining, and explore the vibrant atmosphere of the area.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "200",
                "image_link": "https://pixabay.com/get/gfd4985ebb827de9ebd58d2d3efc412e34bd608b52590ca672bc0be66cc9ecbdbc84a50d9cf6bce02d5d887a3fc21f0313266f0c407ab95bcf88b1860fdb48c5d_1280.jpg",
                "latitude": "13.7650",
                "locationName": "Dubai",
                "longitude": "55.0060",
                "name": "Al Fahidi Village",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Miracle Garden",
                "childrenAllowed": "True",
                "dailyLog": "A magical place where fantasy comes to life.",
                "description": "A world of wonder where nature and technology collide. The Dubai Miracle Garden offers a variety of experiences, including a rainforest, a desert landscape, and a children's world.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "0",
                "estimatedTravelCost": "300",
                "image_link": "https://pixabay.com/get/gc2c3172e0ad1b080b7459c4299139cd471a31d9601aaa495cbac2e36db15bb54c419b0063731bda9bd51534d3a06c50caec3c6b18b0a5deb009ff76fa5eaf6bd_1280.jpg",
                "latitude": "25.05972345",
                "locationName": "Dubai",
                "longitude": "55.24459791687957",
                "name": "Dubai Miracle Garden",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Frame",
                "childrenAllowed": "False",
                "dailyLog": "A remarkable experience that allows visitors to enjoy a unique perspective of Dubai.",
                "description": "A unique and iconic landmark that offers panoramic views of the Dubai skyline. Enjoy stunning views of the city from this iconic observation deck.",
                "estimatedFoodCost": "150",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/ge25cef623f6506aac9e4a037ddcf79cb1179d82b35064ce2e8db6c5c84d14a46c911da9e830ec469daa4da32763188f269c2748f6e8129eb09c9b709afd64c4b_1280.jpg",
                "latitude": "25.23543385",
                "locationName": "Dubai",
                "longitude": "55.300429250082075",
                "name": "Dubai Frame",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Dubai Fountain Show",
                "childrenAllowed": "False",
                "dailyLog": "A spectacular light and water display that adds to Dubai's vibrant atmosphere.",
                "description": "A mesmerizing light and water show that takes place on the Dubai Fountain. Enjoy a spectacular display of lights and water choreographed to music, illuminating the iconic Dubai skyline.",
                "estimatedFoodCost": "100",
                "estimatedStayCost": "500",
                "estimatedTravelCost": "500",
                "image_link": "https://pixabay.com/get/g70a5905ad10a69ddd587c83e2c2d6c8f8c374cccc2e1fe649cbb21d054793e3a12317ea7e77341af3edb1e318ab305174e966d3550ea49233a7a119b6be63b05_1280.jpg",
                "latitude": "13.7530",
                "locationName": "Dubai",
                "longitude": "55.0521",
                "name": "Dubai Fountain Show",
                "totalTravelTimeInHours": 1.0
            }
        ],
        "totalTravelTime": "12.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}''';

//       static String rioDeJanerio =
//   '''
//   {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "Sugarloaf Mountain",
//                     "Santa Teresa",
//                     "Ipanema Beach"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Museu do Carro Velho",
//                     "Maracanã Stadium"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "Gávea",
//                     "Botafogo"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Lapa",
//                     "Tijuca National Park"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Copacabana Beach",
//                     "Christ the Redeemer"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "300",
//             "activities": "500",
//             "food": "500",
//             "transport": "200"
//         },
//         "experiences": [
//             "Christ the Redeemer",
//             "Copacabana Beach",
//             "Tijuca National Park",
//             "Lapa",
//             "Botafogo",
//             "Gávea",
//             "Maracanã Stadium",
//             "Museu do Carro Velho",
//             "Ipanema Beach",
//             "Santa Teresa",
//             "Sugarloaf Mountain"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Christ the Redeemer",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the surrounding neighborhood, enjoy the panoramic views, and marvel at the iconic statue.",
//                 "description": "Iconic landmark offering stunning city views and panoramic sunsets.",
//                 "estimatedFoodCost": "500",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/2818895/pexels-photo-2818895.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.9519173",
//                 "locationName": "Santa Teresa",
//                 "longitude": "-43.2104585",
//                 "name": "Christ the Redeemer",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "12:00 AM",
//                 "attraction": "Copacabana Beach",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Spend an afternoon soaking up the sun, enjoying the vibrant atmosphere, and exploring the nearby bars and clubs.",
//                 "description": "Arguably the most famous beach in the world, known for its vibrant atmosphere and lively nightlife.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "150",
//                 "image_link": "https://images.pexels.com/photos/15091732/pexels-photo-15091732.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.97570575",
//                 "locationName": "Copacabana",
//                 "longitude": "-43.18662424789011",
//                 "name": "Copacabana Beach",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Tijuca National Park",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Embark on an adventure through the lush rainforest, exploring dense trails, cascading waterfalls, and diverse wildlife.",
//                 "description": "An enchanting rainforest sanctuary with diverse flora and fauna, perfect for nature lovers and adventure seekers.",
//                 "estimatedFoodCost": "400",
//                 "estimatedStayCost": "400",
//                 "estimatedTravelCost": "300",
//                 "image_link": "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.960648",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.25059321019367",
//                 "name": "Tijuca National Park",
//                 "totalTravelTimeInHours": 4.0
//             },
//             {
//                 "VisitTime": "12:00 AM",
//                 "attraction": "Lapa",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the vibrant neighborhood, enjoy the nightlife, and immerse yourself in the artistic culture.",
//                 "description": "A charming neighborhood known for its vibrant nightlife, art galleries, and bohemian atmosphere.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "100",
//                 "image_link": "https://images.pexels.com/photos/19787585/pexels-photo-19787585.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-13.2498754",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.4101019",
//                 "name": "Lapa",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Botafogo",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Discover the rich cultural history, visit historic landmarks, and soak in the vibrant atmosphere.",
//                 "description": "A historic neighborhood with a rich cultural heritage, offering a glimpse into Rio's colonial past.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "150",
//                 "image_link": "https://images.pexels.com/photos/18162024/pexels-photo-18162024.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.94883205",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.18012245685731",
//                 "name": "Botafogo",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Gávea",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the charming neighborhood, discover unique shops and cafes, and relax in the serene atmosphere.",
//                 "description": "A charming neighborhood known for its charming architecture, quaint shops, and bohemian atmosphere.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "150",
//                 "estimatedTravelCost": "100",
//                 "image_link": "https://images.pexels.com/photos/18017512/pexels-photo-18017512.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.9814243",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.2383245",
//                 "name": "Gávea",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Maracanã Stadium",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Immerse yourself in the football culture, enjoy the unique atmosphere, and experience the thrill of the match.",
//                 "description": "The iconic stadium where the famous football match between Brazil and Argentina takes place.",
//                 "estimatedFoodCost": "500",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/15926253/pexels-photo-15926253.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.912161949999998",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.23118606002972",
//                 "name": "Maracanã Stadium",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Museu do Carro Velho",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Explore the rich automotive history, admire classic vehicles, and gain insights into Rio's past.",
//                 "description": "A beautiful museum showcasing a collection of vintage vehicles, offering a glimpse into Rio's automotive history.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "150",
//                 "image_link": "https://images.pexels.com/photos/5238645/pexels-photo-5238645.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "18.63655",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-33.84655",
//                 "name": "Museu do Carro Velho",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "12:00 PM",
//                 "attraction": "Ipanema Beach",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Enjoy the stunning beach views, relax in a peaceful atmosphere, and savor the vibrant sunset.",
//                 "description": "A scenic beach known for its stunning views, offering breathtaking sunsets and a relaxing atmosphere.",
//                 "estimatedFoodCost": "200",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "100",
//                 "image_link": "https://images.pexels.com/photos/24039457/pexels-photo-24039457.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "36.82086915",
//                 "locationName": "Ipanema",
//                 "longitude": "-2.4426004",
//                 "name": "Ipanema Beach",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Santa Teresa",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Discover the vibrant nightlife, explore the charming neighborhood, and enjoy the lively cafes.",
//                 "description": "A charming neighborhood known for its vibrant nightlife, bohemian atmosphere, and lively cafes.",
//                 "estimatedFoodCost": "300",
//                 "estimatedStayCost": "200",
//                 "estimatedTravelCost": "150",
//                 "image_link": "https://images.pexels.com/photos/17399357/pexels-photo-17399357.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.9215542",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.1860269",
//                 "name": "Santa Teresa",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 AM",
//                 "attraction": "Sugarloaf Mountain",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Experience breathtaking panoramic views of the city, explore the historic Sugarloaf Fort, and enjoy the magical sunset.",
//                 "description": "One of the most famous landmarks in the world, offering panoramic views of the city and coastline.",
//                 "estimatedFoodCost": "500",
//                 "estimatedStayCost": "300",
//                 "estimatedTravelCost": "200",
//                 "image_link": "https://images.pexels.com/photos/23938273/pexels-photo-23938273.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "-22.9494891",
//                 "locationName": "Rio de Janeiro",
//                 "longitude": "-43.1561568",
//                 "name": "Sugarloaf Mountain",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "24.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//   '''
//   ;
  static String rioDeJanerio =
  '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "Igreja do Castelo de São Jorge",
                    "Museu do Amanhã do Carnaval"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "Jardim Botânico Municipal do Flamengo",
                    "Museu do Carro de Mar"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Tijuca National Park",
                    "Ipanema Beach"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Botafogo Beach",
                    "Copacabana Beach"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Sugarloaf Mountain",
                    "Christ the Redeemer Statue"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "150",
            "activities": "10",
            "food": "10",
            "transport": "30"
        },
        "experiences": [
            "Christ the Redeemer Statue",
            "Sugarloaf Mountain",
            "Copacabana Beach",
            "Botafogo Beach",
            "Ipanema Beach",
            "Tijuca National Park",
            "Museu do Carro de Mar",
            "Jardim Botânico Municipal do Flamengo",
            "Museu do Amanhã do Carnaval",
            "Igreja do Castelo de São Jorge"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Christ the Redeemer Statue",
                "childrenAllowed": "True",
                "dailyLog": "Walk to the statue for stunning city views. Entry fee is around Rs10.",
                "description": "The iconic statue of Jesus Christ overlooking Rio de Janeiro is a must-visit for any traveler. Located in the Urca neighborhood, this statue offers stunning panoramic views of the city.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gfc2d1de52e2bd9d2ef3c2d553b8e572b2ed5d685cbc14334e3f6a6155862eb622b885365eab96d4d1824547b4786c1d7_1280.jpg",
                "latitude": "8.4966309",
                "locationName": "Urca, Rio de Janeiro",
                "longitude": "124.6101928",
                "name": "Christ the Redeemer Statue",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Sugarloaf Mountain",
                "childrenAllowed": "True",
                "dailyLog": "Enjoy panoramic views of the city and surrounding coast from Sugarloaf Mountain. Hiking trails vary in difficulty.",
                "description": "This mountain offers breathtaking views of the city and the surrounding coastline. There are several hiking trails to choose from, ranging in difficulty and length.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/ge386f467088df76b1a47aa61d19b87756c6332c5a5de74a2fd0d0d1ee2bcba3472f13cc59923d6ffdba820c9b7bc989c254ab42a615f9e6544210c38fd0225bb_1280.jpg",
                "latitude": "-22.9494891",
                "locationName": "Sugarloaf Mountain, Rio de Janeiro",
                "longitude": "-43.1561568",
                "name": "Sugarloaf Mountain",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Copacabana Beach",
                "childrenAllowed": "True",
                "dailyLog": "Indulge in the vibrant nightlife of Copacabana Beach. Enjoy the stunning scenery and enjoy live music at one of the many bars and clubs.",
                "description": "One of the most famous beaches in the world, Copacabana offers stunning scenery and a vibrant nightlife scene. Visitors can enjoy swimming, sunbathing, and exploring the iconic Devil's Head rock.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g64f3676461d00f946d8e06d9f29e1cd78e9ca889d0b0228f9ddfdfa82985bc4b58607592dbdf15af46337260187f36f6a9317eedbe18fa630fec6010d6a6e7b1_1280.jpg",
                "latitude": "-22.97570575",
                "locationName": "Copacabana Beach, Rio de Janeiro",
                "longitude": "-43.18662424789011",
                "name": "Copacabana Beach",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Botafogo Beach",
                "childrenAllowed": "True",
                "dailyLog": "Relax and enjoy the stunning scenery of Botafogo Beach. This beach is a great place to swim, sunbathe, and explore the charming neighborhood.",
                "description": "Another popular beach in Rio de Janeiro, Botafogo offers stunning views and a more relaxed atmosphere compared to Copacabana. Visitors can enjoy swimming, sunbathing, and exploring the charming neighborhood.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g7c2b9b9cd1238836477872fd9504ed6a4aa9966cba9f11d895f2ca44693b279d58ba63c440ebb2c33f98ebebe29f6476da7d23a1e09c1bc84f558fb349beb649_1280.jpg",
                "latitude": "-22.945403650000003",
                "locationName": "Botafogo Beach, Rio de Janeiro",
                "longitude": "-43.180818018208925",
                "name": "Botafogo Beach",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Ipanema Beach",
                "childrenAllowed": "True",
                "dailyLog": "Enjoy the vibrant nightlife of Ipanema Beach. This beach is a great place to relax, sunbathe, and explore the lively neighborhood.",
                "description": "A popular beach in Rio de Janeiro, Ipanema offers a vibrant nightlife and a bohemian atmosphere. Visitors can enjoy swimming, sunbathing, and exploring the lively neighborhood.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/gf9126676cbd27139063f89472ea903c73190c9a2b82cfca81a0a7906667265b06371ce1d5fc703001cc5edb1200f7752f2805b4a51275ab5a95961ed05eeec69_1280.jpg",
                "latitude": "36.82086915",
                "locationName": "Ipanema Beach, Rio de Janeiro",
                "longitude": "-2.4426004",
                "name": "Ipanema Beach",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Tijuca National Park",
                "childrenAllowed": "True",
                "dailyLog": "Explore the lush rainforest and stunning scenery of Tijuca National Park. Hiking trails offer varying levels of difficulty.",
                "description": "One of the largest and oldest national parks in the world, Tijuca National Park offers a variety of hiking trails, waterfalls, and caves. Visitors can also explore the lush rainforest and enjoy stunning scenery.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "300",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g39aa23cd07e6e66c0421b85c80e35530aba2a07316b6fb331c51048ad9fc2d899ab6cf17f64659d8b8c2d89b081dc01606022b71e207a707881dea20065be1d1_1280.jpg",
                "latitude": "-22.960648",
                "locationName": "Tijuca National Park, Rio de Janeiro",
                "longitude": "-43.25059321019367",
                "name": "Tijuca National Park",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Museu do Carro de Mar",
                "childrenAllowed": "True",
                "dailyLog": "Explore the vintage cars and learn about their history at the Museu do Carro de Mar.",
                "description": "This museum showcases a collection of vintage cars, including a beautiful collection of carriages built by the renowned Atelier Coach.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/ge03886b59fef0ffc64a50b231b84f349776bd442b098deb84dcebf497dd2b37f72c7c338e777b4c758c7673a6c36966d9cb5dcdb5b763ab0c6c761efa97f0a9d_1280.jpg",
                "latitude": "12.822365",
                "locationName": "Museu do Carro de Mar, Rio de Janeiro",
                "longitude": "-33.940245",
                "name": "Museu do Carro de Mar",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Jardim Botânico Municipal do Flamengo",
                "childrenAllowed": "True",
                "dailyLog": "Explore the beautiful gardens of the Jardim Botânico Municipal do Flamengo. This park offers stunning city views and a relaxing escape from the bustling city.",
                "description": "This beautiful park offers a relaxing escape from the bustling city. Visitors can enjoy a variety of gardens, including the beautiful Flower Clock Garden and the Jardim do Morro. The park also offers stunning views of Guanabara Bay.",
                "estimatedFoodCost": "15",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g1dc66b14e7d87df5f8b1440b82206812920fc132c4f14533c2d76c07ca8922c9c9f49544533b221348e88310f0dc12cffecd0aa47a230f27093470f4925e3dd0_1280.jpg",
                "latitude": "12.803397",
                "locationName": "Jardim Botânico Municipal do Flamengo, Rio de Janeiro",
                "longitude": "-33.952243",
                "name": "Jardim Botânico Municipal do Flamengo",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Museu do Amanhã do Carnaval",
                "childrenAllowed": "True",
                "dailyLog": "Explore the contemporary and modern art collection of the Museu do Amanhã do Carnaval. This museum offers stunning city views and a unique cultural experience.",
                "description": "This museum exhibits a collection of contemporary and modern art related to Rio de Janeiro. Visitors can learn about the history of the Carnival and enjoy stunning views of the city.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g5a0876bc2400444f6b5848dfe22ec5bde7254d9952dc0815a58010538f19213bd5e23773221cb16a30543a535b3ee3ba838bde34be26a9d64615c09b66d169e5_1280.jpg",
                "latitude": "12.806526",
                "locationName": "Museu do Amanhã do Carnaval, Rio de Janeiro",
                "longitude": "-33.945459",
                "name": "Museu do Amanhã do Carnaval",
                "totalTravelTimeInHours": 1.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Igreja do Castelo de São Jorge",
                "childrenAllowed": "True",
                "dailyLog": "Explore the historic church of Igreja do Castelo de São Jorge. This church offers stunning city views and a unique cultural experience.",
                "description": "This historic church offers stunning views of the city and a unique atmosphere. Visitors can enjoy a variety of religious ceremonies and learn about the history of the church.",
                "estimatedFoodCost": "10",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g341855c4b91e38d0d356ebb4104f0c30620500e73a80ea848fc28c173a8eacb58612cf1b7aca18ea18c6199d3b6c554197f1d61313b0fae0ef0c62db327a409e_1280.jpg",
                "latitude": "41.9777415",
                "locationName": "Igreja do Castelo de São Jorge, Rio de Janeiro",
                "longitude": "-8.6774826",
                "name": "Igreja do Castelo de São Jorge",
                "totalTravelTimeInHours": 1.0
            }
        ],
        "totalTravelTime": "13.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}''';
//   static String losAngeles =
//       '''
//       {
//     "data": {
//         "dayWiseItinerary": [
//             {
//                 "day": "Day 1",
//                 "places": [
//                     "The Getty Center",
//                     "The Broad Museum of Art"
//                 ]
//             },
//             {
//                 "day": "Day 2",
//                 "places": [
//                     "Santa Monica Playhouse",
//                     "Universal Studios Hollywood"
//                 ]
//             },
//             {
//                 "day": "Day 3",
//                 "places": [
//                     "The Aquarium at the Getty Center",
//                     "The Broad"
//                 ]
//             },
//             {
//                 "day": "Day 4",
//                 "places": [
//                     "Hollywood Walk of Fame",
//                     "The Getty Center"
//                 ]
//             },
//             {
//                 "day": "Day 5",
//                 "places": [
//                     "Santa Monica Pier",
//                     "Griffith Observatory"
//                 ]
//             }
//         ],
//         "estimatedCost": {
//             "accomodation": "30",
//             "activities": "15",
//             "food": "15",
//             "transport": "20"
//         },
//         "experiences": [
//             "Griffith Observatory",
//             "Santa Monica Pier amusement park",
//             "The Getty Center",
//             "Hollywood Walk of Fame",
//             "The Broad",
//             "The Aquarium at the Getty Center",
//             "Universal Studios Hollywood",
//             "Santa Monica Playhouse",
//             "The Broad Museum of Art",
//             "The Getty Center"
//         ],
//         "hotels": [],
//         "places": [
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Griffith Observatory",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Beautiful evening views of the city. A must-see for any visitor to Los Angeles.",
//                 "description": "One of the most iconic landmarks in Los Angeles, offering stunning views of the city and surrounding areas.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "30",
//                 "estimatedTravelCost": "20",
//                 "image_link": "https://images.pexels.com/photos/827216/pexels-photo-827216.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.11821875",
//                 "locationName": "Griffith Observatory",
//                 "longitude": "-118.30029332196601",
//                 "name": "Griffith Observatory",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Santa Monica Pier amusement park",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Beautiful day at the beach! Perfect for people-watching and enjoying the sunshine.",
//                 "description": "One of the most iconic beaches in the world, offering a variety of activities and entertainment options.",
//                 "estimatedFoodCost": "20",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/6039239/pexels-photo-6039239.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.00889605",
//                 "locationName": "Santa Monica Pier",
//                 "longitude": "-118.49739978232839",
//                 "name": "Santa Monica Pier",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Getty Center",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Beautiful architecture and gardens. A great place to relax and enjoy the views.",
//                 "description": "A stunning museum complex with a wide variety of art, architecture, and gardens.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/11540260/pexels-photo-11540260.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0770168",
//                 "locationName": "The Getty Center",
//                 "longitude": "-118.47401",
//                 "name": "The Getty Center",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Hollywood Walk of Fame",
//                 "childrenAllowed": "True",
//                 "dailyLog": "One of the most iconic landmarks in Los Angeles! A must-see for any visitor to Hollywood.",
//                 "description": "A famous tourist destination with a wide array of iconic landmarks, including the Hollywood Sign, Walk of Fame stars, and the Griffith Observatory.",
//                 "estimatedFoodCost": "10",
//                 "estimatedStayCost": "20",
//                 "estimatedTravelCost": "15",
//                 "image_link": "https://images.pexels.com/photos/4700108/pexels-photo-4700108.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.1016624",
//                 "locationName": "Hollywood Walk of Fame",
//                 "longitude": "-118.3418479",
//                 "name": "Hollywood Walk of Fame",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Broad",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Beautiful modern art museum with a variety of exhibitions to choose from.",
//                 "description": "A contemporary art museum with a diverse collection of contemporary and modern art.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/23948169/pexels-photo-23948169.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "47.6329005",
//                 "locationName": "The Broad",
//                 "longitude": "-53.77715217330456",
//                 "name": "The Broad",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Aquarium at the Getty Center",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Unique and unforgettable experience perfect for any visitor to Los Angeles.",
//                 "description": "One of the most unique and popular attractions in Los Angeles, featuring an aquarium with a variety of marine life, including sea lions, penguins, and sharks.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/11540260/pexels-photo-11540260.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0522",
//                 "locationName": "The Getty Center",
//                 "longitude": "-118.4168",
//                 "name": "The Aquarium at the Getty Center",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Universal Studios Hollywood",
//                 "childrenAllowed": "True",
//                 "dailyLog": "The perfect place to spend a day with friends or family. A must-do for any visitor to Los Angeles.",
//                 "description": "The biggest entertainment complex in the world, featuring thrilling rides, shows, and attractions based on your favorite movies and characters.",
//                 "estimatedFoodCost": "40",
//                 "estimatedStayCost": "60",
//                 "estimatedTravelCost": "50",
//                 "image_link": "https://images.pexels.com/photos/276114/pexels-photo-276114.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.13923215",
//                 "locationName": "Universal Studios Hollywood",
//                 "longitude": "-118.35438341873679",
//                 "name": "Universal Studios Hollywood",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "Santa Monica Playhouse",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Unique and intimate theatre with a variety of performances to choose from.",
//                 "description": "A unique theatre venue offering a variety of performances and events throughout the year.",
//                 "estimatedFoodCost": "15",
//                 "estimatedStayCost": "30",
//                 "estimatedTravelCost": "20",
//                 "image_link": "https://images.pexels.com/photos/24247242/pexels-photo-24247242.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0190134",
//                 "locationName": "Santa Monica Playhouse",
//                 "longitude": "-118.497831",
//                 "name": "Santa Monica Playhouse",
//                 "totalTravelTimeInHours": 1.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Broad Museum of Art",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Unique and diverse museum with a variety of exhibitions to choose from.",
//                 "description": "A museum with a vast collection of contemporary and modern art, spanning a wide range of styles and cultures.",
//                 "estimatedFoodCost": "25",
//                 "estimatedStayCost": "40",
//                 "estimatedTravelCost": "30",
//                 "image_link": "https://images.pexels.com/photos/6039214/pexels-photo-6039214.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0202",
//                 "locationName": "The Broad Museum of Art",
//                 "longitude": "-118.2437",
//                 "name": "The Broad Museum of Art",
//                 "totalTravelTimeInHours": 2.0
//             },
//             {
//                 "VisitTime": "10:00 to 19:00",
//                 "attraction": "The Getty Center",
//                 "childrenAllowed": "True",
//                 "dailyLog": "Beautiful architecture and gardens. A great place to relax and enjoy the views.",
//                 "description": "A stunning museum complex with a wide variety of art, architecture, and gardens.",
//                 "estimatedFoodCost": "30",
//                 "estimatedStayCost": "50",
//                 "estimatedTravelCost": "40",
//                 "image_link": "https://images.pexels.com/photos/11540260/pexels-photo-11540260.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//                 "latitude": "34.0770168",
//                 "locationName": "The Getty Center",
//                 "longitude": "-118.47401",
//                 "name": "The Getty Center",
//                 "totalTravelTimeInHours": 2.0
//             }
//         ],
//         "totalTravelTime": "18.0 hour(s)",
//         "transport": [
//             "Taxi",
//             "train"
//         ]
//     },
//     "status": "success"
// }
//       '''
//   ;
  static String losAngeles =
      '''{
    "data": {
        "dayWiseItinerary": [
            {
                "day": "Day 1",
                "places": [
                    "The Getty Villa",
                    "The Museum of Contemporary Art"
                ]
            },
            {
                "day": "Day 2",
                "places": [
                    "The Broad Museum",
                    "The Getty Center"
                ]
            },
            {
                "day": "Day 3",
                "places": [
                    "Universal Studios Hollywood",
                    "Santa Barbara Mission"
                ]
            },
            {
                "day": "Day 4",
                "places": [
                    "Griffith Observatory",
                    "Venice Beach"
                ]
            },
            {
                "day": "Day 5",
                "places": [
                    "Santa Monica Pier",
                    "Hollywood Sign & Walk of Fame"
                ]
            }
        ],
        "estimatedCost": {
            "accomodation": "100",
            "activities": "20",
            "food": "20",
            "transport": "30"
        },
        "experiences": [
            "Hollywood Sign",
            "Santa Monica Pier Ferris Wheel",
            "Venice Beach Boardwalk",
            "Griffith Observatory",
            "Santa Barbara Mission",
            "Universal Studios Hollywood",
            "The Getty Center",
            "The Broad Museum",
            "The Museum of Contemporary Art",
            "The Getty Villa"
        ],
        "hotels": [],
        "places": [
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Hollywood Sign",
                "childrenAllowed": "True",
                "dailyLog": "Explore the history of the sign and its stars. Visit the Walk of Fame for a glimpse into the lives of past and present celebrities.",
                "description": "One of the most famous landmarks in the world, the Hollywood Sign is an iconic symbol of the entertainment industry.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g1016678530d99444d207026af7f1a3a3d2f182236284e398a3a39bacc68835aec72206067b0611870ed75ac3c984d5f6d90e09bfbe34c14b17eb9b4317884e4e_1280.jpg",
                "latitude": "37.7749",
                "locationName": "Hollywood",
                "longitude": "-122.4324",
                "name": "Hollywood Sign & Walk of Fame",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Santa Monica Pier Ferris Wheel",
                "childrenAllowed": "True",
                "dailyLog": "Enjoy stunning views of the Pacific Ocean and the city skyline. Take a ride on the Ferris wheel for panoramic vistas of the coastline.",
                "description": "The Santa Monica Pier is a popular amusement park, beach, and boardwalk destination on the Pacific Coast in Los Angeles, California. The pier is known for its iconic Ferris wheel, sea lion shows, and amusement rides.",
                "estimatedFoodCost": "25",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "40",
                "image_link": "https://pixabay.com/get/g376a97e42b8b9e33b59b343942e5a25a71d7b8d34ba8b8a67f1e30c2629cd01f661ad4edbe2684d4307e64cbe5ee27c0f07a3a87c480fbb192136ea376fa5f96_1280.jpg",
                "latitude": "34.00889605",
                "locationName": "Santa Monica",
                "longitude": "-118.49739978232839",
                "name": "Santa Monica Pier",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Venice Beach Boardwalk",
                "childrenAllowed": "True",
                "dailyLog": "Explore the charming streets of Venice Beach. Visit the local shops and art galleries, and enjoy the sunset views from the pier.",
                "description": "Venice Beach is a charming beach city located in the heart of Los Angeles, California. The beach is known for its eclectic mix of cultures, including Italian immigrants and local residents. The area also offers a variety of shopping, dining, and entertainment options.",
                "estimatedFoodCost": "20",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "30",
                "image_link": "https://pixabay.com/get/g045273baa307320f3c26fbcb3881ee444817ae716c19468ec6cbfde30662ba6c432d63d8cc788663a3925557d424129712fee68548de7cdada0b712f55dd3a7b_1280.jpg",
                "latitude": "33.97996005",
                "locationName": "Venice Beach",
                "longitude": "-118.4687710293081",
                "name": "Venice Beach",
                "totalTravelTimeInHours": 2.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Griffith Observatory",
                "childrenAllowed": "True",
                "dailyLog": "Explore the wonders of the universe. Take in the breathtaking views of the city and the Pacific Ocean from the observatory's observation deck.",
                "description": "The Griffith Observatory is a popular observatory located in Griffith Park in Los Angeles, California. The observatory offers stunning views of the city and the Pacific Ocean, including the Hollywood Sign and the Santa Monica Pier. The observatory also offers educational exhibits on astronomy and space exploration.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "150",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/gf5257275c4d1b8ddde628f51bc68a3be8521454a893f5f3455c6cb18d83d5faa88985964a19f3a075a9745a3069a81b0120327e812fe984b7160a783eafaa687_1280.jpg",
                "latitude": "34.11821875",
                "locationName": "Griffith Park",
                "longitude": "-118.30029332196601",
                "name": "Griffith Observatory",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Santa Barbara Mission",
                "childrenAllowed": "True",
                "dailyLog": "Visit the historic Santa Barbara Mission and learn about its rich history. Enjoy the stunning views of the Santa Barbara coastline from the mission's balcony.",
                "description": "The Santa Barbara Mission is a historic Spanish mission in Santa Barbara, California. The mission is a UNESCO World Heritage Site and is one of the most popular tourist destinations in the world. The mission is also a beautiful example of Spanish colonial architecture, and offers a glimpse into the history of California.",
                "estimatedFoodCost": "25",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "40",
                "image_link": "https://pixabay.com/get/g5e27a975e80cf6fb8507a1e68c7338f51863a96bf146164bd7e94893b7e676e2f09e380459243bdea2ff2066ab1cbee7ca5e7f6d2c85554137c911be79a3b13c_1280.png",
                "latitude": "34.4383725",
                "locationName": "Santa Barbara",
                "longitude": "-119.71322835704508",
                "name": "Santa Barbara Mission",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "Universal Studios Hollywood",
                "childrenAllowed": "True",
                "dailyLog": "Experience the magic of Hollywood at the Universal Studios Hollywood theme park. Enjoy thrilling rides, meet your favorite characters, and enjoy a variety of entertainment options.",
                "description": "The Universal Studios Hollywood theme park is one of the largest theme parks in the world, featuring rides and attractions from some of the world's most popular movie franchises. The park also offers a variety of dining, shopping, and entertainment options.",
                "estimatedFoodCost": "35",
                "estimatedStayCost": "200",
                "estimatedTravelCost": "60",
                "image_link": "https://pixabay.com/get/gaf3bbc397f2a86c7dbd3d6e985ab18e16ac4db9c22a389fc5a610b3014caa58ac23b98a4da6545f43b11dc93d5502160_1280.jpg",
                "latitude": "34.13923215",
                "locationName": "Hollywood",
                "longitude": "-118.35438341873679",
                "name": "Universal Studios Hollywood",
                "totalTravelTimeInHours": 5.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Getty Center",
                "childrenAllowed": "True",
                "dailyLog": "Explore the world-renowned art collection at the Getty Center. Enjoy stunning views of the city from the museum's rooftop terrace.",
                "description": "The Getty Center is an art museum in Los Angeles, California, featuring a collection of over 20,000 works of art from the 20th and 21st centuries. The museum also offers a variety of dining, shopping, and entertainment options.",
                "estimatedFoodCost": "40",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "60",
                "image_link": "https://pixabay.com/get/g3ce50258bebcddf9473765529233ce5696ea9d2da3e0e2d085f98ab58a7835677c553ea10de6664cfd1f84eae48b02fea7a3670d8c2f81e2b1e67f6e43174feb_1280.jpg",
                "latitude": "34.0770168",
                "locationName": "Los Angeles",
                "longitude": "-118.47401",
                "name": "The Getty Center",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Broad Museum",
                "childrenAllowed": "True",
                "dailyLog": "Explore the cutting-edge art collection at the Broad Museum. Enjoy stunning views of the city from the museum's rooftop terrace.",
                "description": "The Broad Museum is a contemporary art museum in Los Angeles, California. The museum features a collection of over 12,000 works of art from the 20th and 21st centuries. The museum also offers a variety of dining, shopping, and entertainment options.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "40",
                "image_link": "https://pixabay.com/get/gc3324df040824dfd08a9332e2e64d59e5b1c948d28f8b6761e06ea6def4de3560e8edebda3246c66bd96e15fbbb519fb2f9c083dbd59add4e9d164ffa6804462_1280.jpg",
                "latitude": "34.0544584",
                "locationName": "Los Angeles",
                "longitude": "-118.25059415175812",
                "name": "The Broad Museum",
                "totalTravelTimeInHours": 3.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Museum of Contemporary Art",
                "childrenAllowed": "True",
                "dailyLog": "Explore the innovative art collection at the Museum of Contemporary Art. Enjoy stunning views of the city from the museum's rooftop terrace.",
                "description": "The Museum of Contemporary Art (MoCA) is a contemporary art museum in Los Angeles, California. The museum features a collection of over 1,200 works of art from the 20th and 21st centuries. The museum also offers a variety of dining, shopping, and entertainment options.",
                "estimatedFoodCost": "35",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/g11f7cf3458b112c4fb299ccd39e74d4324de982a921fafd12261e321dde3a3c25e4872f3e46953ff946c80824b71236d261f0d9b12186e26d79fa35be6ed745d_1280.jpg",
                "latitude": "34.0504526",
                "locationName": "Los Angeles",
                "longitude": "-118.23856993856165",
                "name": "The Museum of Contemporary Art",
                "totalTravelTimeInHours": 4.0
            },
            {
                "VisitTime": "10:00 to 19:00",
                "attraction": "The Getty Villa",
                "childrenAllowed": "True",
                "dailyLog": "Explore the charming architecture and world-renowned art collection at the Getty Villa. Enjoy stunning views of the city from the villa's terrace.",
                "description": "The Getty Villa is a historic estate in Los Angeles, California, featuring a collection of over 20,000 works of art from the 20th and 21st centuries. The villa also offers a variety of dining, shopping, and entertainment options.",
                "estimatedFoodCost": "30",
                "estimatedStayCost": "100",
                "estimatedTravelCost": "50",
                "image_link": "https://pixabay.com/get/ge0d898ce8be0204f8db8495e40fa03e065627a567f0ad23da27cf86247d260a1bbddeb19212898485ac38ff1d210791bc56f21fbef6261ad24e3b3130a79aeb7_1280.jpg",
                "latitude": "34.04498185",
                "locationName": "Los Angeles",
                "longitude": "-118.56501968592397",
                "name": "The Getty Villa",
                "totalTravelTimeInHours": 4.0
            }
        ],
        "totalTravelTime": "36.0 hour(s)",
        "transport": [
            "Taxi",
            "train"
        ]
    },
    "status": "success"
}'''
;
}