import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatCompletionWidget extends StatefulWidget {
  @override
  _ChatCompletionWidgetState createState() => _ChatCompletionWidgetState();
}

class _ChatCompletionWidgetState extends State<ChatCompletionWidget> {
  String _response = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: fetchChatCompletion,
            child: Text('Fetch Chat Completion'),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: _response.isNotEmpty
                  ? Expanded(
                    child: Text(
                      _prettyPrintJson(json.decode(_response)['choices'][0]['message']['content']),
                    ),
                  )
                  : Text('Response will be displayed here'),
            ),
          ),
        ],
      ),
    );
  }
  String _prettyPrintJson(String jsonString) {
    final jsonObject = json.decode(jsonString);
    final prettyString = JsonEncoder.withIndent('  ').convert(jsonObject);
    return prettyString;
  }
  Future<void> fetchChatCompletion() async {
    String url = 'https://api.groq.com/openai/v1/chat/completions';
    String groqApiKey = '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'; // Replace 'YOUR_GROQ_API_KEY' with your actual API key
    String model = 'mixtral-8x7b-32768';
    final Map<String, dynamic> schema = {
      "properties": {
        "places": {
          "items": {
            "required": [
              "name",
              "location",
              "image_link",
              "description",
              "attraction",
              "VisitTime",
              "childrenAllowed"
            ],
            "properties": {
              "name": {"type": "string", "title": "name"},
              "longitude": {"type": "string", "title": "longitude"},
              "latitude": {"type": "string", "title": "latitude"},
              "location": {"type": "string", "title": "location "},
              "image_link": {"type": "string", "title": "image_link "},
              "description": {"type": "string", "title": "description "},
              "attraction": {"type": "string", "title": "attraction "},
              "VisitTime": {"type": "string", "title": "VisitTime "},
              "childrenAllowed": {"type": "string", "title": "childrenAllowed "},
            },
            "type": "object"
          },
          "type": "array"
        },

        "estimatedCost": {
          "type": "object",
          "properties": {
            "accomodation": {"type": "String"},
            "activities": {"type": "String"},
            "food": {"type": "String"},
            "transport": {"type": "String"}
          }
        },
        "experiences": {"type": "array", "items": {"type": "string"}},
        "transport": {"type": "array", "items": {"type": "string"}}
      },
      "required": [
        "places",

        "estimatedCost",
        "experiences",
        "transport"
      ],
      "title": "Travel Itinerary",
      "type": "object"
    };
    Map<String, dynamic> requestBody = {
      "messages": [
        {
          "role": "system",
          "content": "You provide answers in JSON $schema"
        },
        {
          "role": "user",
          "content": "Fetch a travel itinerary for Delhi."
        }
      ],
      "model": "mixtral-8x7b-32768",
      "max_tokens": 20000,
      "temperature": 0,
      "stream": false,
      "response_format": {
        "type": "json_object"
      }
    };


    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer $groqApiKey",
          "Content-Type": "application/json",
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        // Request successful
        setState(() {
          _response = response.body;
        });
      } else {
        // Request failed
        print(response.toString());
        setState(() {
          _response = 'Request failed with status: ${response.statusCode}';
        });
      }
    } catch (e) {
      // Exception occurred during request
      print(e.toString()+ "fdjkfkdfkd");
      setState(() {
        _response = 'Exception: $e';
      });
    }
  }
}
