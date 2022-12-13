FROM ubuntu 

ENV PROJECT_DIR /Dissertation/FlaskMicroApi
WORKDIR ${PROJECT_DIR}
COPY . .

RUN apt-get update && apt-get upgrade -y
RUN apt update 
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y

FROM python:3.10

CMD ["python3", "run_requests.py"]