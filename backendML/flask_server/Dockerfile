FROM 
FROM python:3.9.13-buster
WORKDIR /app

COPY requirements.txt ./
COPY classes.py ./
COPY prompts.py ./
COPY responses.py ./
COPY server.py ./

ENV PEXELS_API_KEY cRklk4uS6KzX2x1KfGaZSD38cHnHvCaFHnJoyCAFLowH4kRVQ2VmkfcM

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8501
EXPOSE 11434

ENTRYPOINT ["flask", "--app", "server", "run", "-h", "0.0.0.0", "-p", "8501"]