FROM python:3.9-slim

RUN mkdir /app
WORKDIR /app

COPY . .

RUN apt-get update && pip install -r requirements.txt

RUN chmod +x app.py

ENTRYPOINT ["python3", "./app.py"]
