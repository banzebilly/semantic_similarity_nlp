FROM python:3.12.0

WORKDIR /app

COPY . /app 

ADD requirement.txt .
ADD movies.txt .

COPY watch_next.py . 

EXPOSE 80

#copy the current directory contents into the container
COPY . .

RUN Python3 -m pip install requirement.txt


CMD ["python", "watch_next.py"] 
















