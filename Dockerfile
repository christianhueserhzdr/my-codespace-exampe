FROM python:3.11.0-bullseye

COPY . /code/

WORKDIR /code/

RUN pip install poetry
RUN poetry install

ENTRYPOINT [ "poetry", "run", "python3", "my_codespace_example/manage.py", "runserver", "0.0.0.0:8000" ]
