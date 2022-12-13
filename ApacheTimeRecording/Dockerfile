FROM ubuntu 
RUN apt-get update && apt-get upgrade -y
RUN apt update 
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt clean 

FROM python:3.10
RUN pip3 install pipenv
CMD ["pipenv", "run", "python", "run_requests.py"]