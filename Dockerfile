FROM python:3.6

WORKDIR /app/rasa-demo

COPY ./requirements.txt /app/rasa-demo/

RUN pip install -r requirements.txt \
    && python -m spacy download en

COPY . /app/rasa-demo/
