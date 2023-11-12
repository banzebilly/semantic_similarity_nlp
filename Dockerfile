FROM python:3.12.0

WORKDIR /usr/scr/app

ADD requirement.txt .
ADD movies.txt .

#copy the current directory contents into the container at /usr/src/app
COPY . .

RUN Python3 -m pip install requirement.txt


CMD ["python", "watch_next.py"] 
