FROM cypress/browsers:latest

RUN apt update && apt install -y python3 python3-pip 

COPY . /api

WORKDIR /api

RUN pip install -r requirements.txt
