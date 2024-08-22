# LG-Gemma-AI-fictional-travel-itinerary-generator
Shiven Upadhyay

AI-powered tourism app for you and you only.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [FAQ](#faq)
  - [How to Use AI Features](#how-to-use-ai-features)
  - [How to Connect with Liquid Galaxy](#how-to-connect-with-liquid-galaxy)
- [Contribution](#contribution)
  - [Add Pixabay API Key](#add-pixabay-api-key)

## Overview

Flutter app powered by Gemini makes it easy to create itineraries. Connected to the Liquid Galaxy , the app allows users to go to places and take an orbit around it. It provides personalized itineraries, recommends tourist places, and provides personality adjustments.

## Features

- Speech To Text commands for querying tourist information.
- Personalized itineraries based on the user's personaity.
- Integration with Liquid Galaxy for orbits and kml balloons.
- Easy-to-use prompts and eye catching UI"

## Usage

1. Install the app on your device.
2. Add your Gemini API key in input given in Settings.
3. Connect to the Liquid Galaxy system in Settings.
4. Use the Application.
5. Explore places through the Liquid Galaxy visualization.

## Screenshots

| ![Screenshot_20240806_232807](https://github.com/user-attachments/assets/a4088838-6d0a-4891-8973-b3cfbd809c0b) |![Screenshot_20240822_133622](https://github.com/user-attachments/assets/e5ae650a-db91-4627-a85d-e189b20222fe) | ![Screenshot_20240806_232659](https://github.com/user-attachments/assets/d4282262-8768-46c6-b245-e34ffe6ad113)|
| ---- | ---- | ---- | 
|![Screenshot_20240806_233038](https://github.com/user-attachments/assets/e9397b1f-f7c9-40a3-b276-9f5476efc4a2)|![Screenshot_20240806_232908](https://github.com/user-attachments/assets/c8a39b95-572a-4d27-9367-a0a7391a65da) |![Screenshot_20240806_232831](https://github.com/user-attachments/assets/f5f3f680-571a-4062-a238-99709a9453ed)|

## FAQ

### How to Use AI Features
To use AI features of the app you provide the API_KEY.

1. Go to [Gemini API](https://aistudio.google.com/app/apikey).
2. Create a NEW API key.
3. Copy the API_KEY and paste it under General Settings in app.

### How to Connect with Liquid Galaxy

1. Open the Settings screen in the app.
2. Enter the required credentials for the Liquid Galaxy system.
3. Once connected, you can start using the orbit and tour features to explore locations visually.

## Contribution

### Clone the Project

To contribute to the project, start by cloning the repository:
```bash
git clone https://github.com/yourusername/LG-Gemma-AI-fictional-travel-itinerary-generator.git
cd LG-Gemma-AI-fictional-travel-itinerary-generator
```

### Add Pixabay API Key
1. After cloning the project, visit here to get an api key:

https://pixabay.com/api/docs/

2. In .env file write api key as ACCESS_TOKEN=<your-api-key-here> in .env file in lib/env folder.
   
```bash
ACCESS_TOKEN=<your-api-key-here>
```
