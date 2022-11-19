FROM python:3.11.0-bullseye

WORKDIR /code

COPY . /code/

RUN pip install poetry
RUN poetry install

