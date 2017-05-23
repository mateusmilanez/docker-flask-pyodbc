# docker-flask-pyodbc

This repository have a Dockerfile that extends the docker image jfloff/alpine-python:2.7-slim, this upgrade supports the flask admin framework with pyodbc.

To connect your flask project in Microsoft SQL database use the syntax:

```python
app.config['SQLALCHEMY_DATABASE_URI'] = 'mssql+pyodbc://DB_USER:DB_PASS@DB_ADDRESS:DB_PORT/DATABASE_NAME?driver=/usr/lib/libtdsodbc.so.0'
```    

To build and run the docker image use:
```
docker build -t flask-pyodbc:latest .
 docker run --rm -ti -v $(pwd):/app -p 80:5001 flask-pyodbc:latest /app/app.py
```
