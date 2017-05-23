FROM jfloff/alpine-python:2.7-slim

RUN apk update && \
apk add g++ gcc unixodbc-dev \
freetds python-dev vim 

RUN pip install \
Flask \
Flask-Admin \
Flask-SQLAlchemy \
pyodbc
