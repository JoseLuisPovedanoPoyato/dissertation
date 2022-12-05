FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 

FROM python:3.10
RUN pip3 install pipenv
CMD ["pipenv", "run", "python", "run_requests.py"]