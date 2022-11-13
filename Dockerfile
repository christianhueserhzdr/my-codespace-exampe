FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY . /code/

RUN pip install poetry
RUN poetry install

RUN chown -R $USER:$USER my_codespace_example/hello_world my_codespace_example/manage.py
