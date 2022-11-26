FROM python:3.11.0-bullseye

RUN mkdir -p /workspaces/my-codespace-example/

COPY . /workspaces/my-codespace-example/

WORKDIR /workspaces/my-codespace-example/

SHELL [ "bin/bash", "-c" ]

RUN pip install -U pip
ENV VIRTUAL_ENV=/workspaces/my-codespace-example/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install poetry
RUN poetry install

ENTRYPOINT [ "poetry", "run", "python3", "my_codespace_example/manage.py", "runserver", "0.0.0.0:8000" ]
