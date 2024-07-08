#!/bin/sh

# Start Ollama in the background
ollama serve &

# Wait for Ollama to start
sleep 5

# Pull and run <YOUR_MODEL_NAME>
ollama run gemma:2b