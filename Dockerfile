FROM cypress/browsers:latest

ENV APP_PORT=443
RUN apt update && apt install -y python3 python3-pip && python3 --version

COPY . /api

WORKDIR /api

RUN pip install -r requirements.txt

CMD python3 main.py
