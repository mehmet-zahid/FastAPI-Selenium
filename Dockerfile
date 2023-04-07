FROM cypress/browsers:latest

RUN apt update && apt install -y python3 python3-pip && python3 --version

COPY . /api

WORKDIR /api

RUN pip install -r requirements.txt

CMD python3 main.py
