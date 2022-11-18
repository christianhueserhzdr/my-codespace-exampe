FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY . /code/

RUN python3 -m venv .venv/
RUN source .venv/bin/activate
RUN pip install poetry
RUN poetry install

