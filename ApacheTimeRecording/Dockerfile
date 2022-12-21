FROM python:3.10
RUN apt-get update && apt-get upgrade -y
RUN apt update 
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y

RUN pip3 install pipenv

ENV PROJECT_DIR /Dissertation/FlaskMicroApi
WORKDIR ${PROJECT_DIR}
COPY . .

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 8000

CMD ["pipenv", "run", "python", "controller.py"]