FROM python:3.12.0

WORKDIR /app

ADD requirement.txt .
ADD movies.txt .

COPY . .
RUN Python3 -m pip install requirement.txt

CMD ["python", "watch_next.py"] 