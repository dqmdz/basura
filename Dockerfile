FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk update
RUN apk add bash

RUN pip install -r requirements.txt

COPY app.py app.py

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]