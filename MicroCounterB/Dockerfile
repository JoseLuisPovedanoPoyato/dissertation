FROM python:3.10

RUN pip3 install pipenv

ENV PROJECT_DIR /Dissertation/FlaskMicroApi

WORKDIR ${PROJECT_DIR}

COPY Pipfile .
COPY Pipfile.lock .
COPY . .

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 8000

CMD ["pipenv", "run", "python", "counter_b.py"]