FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install dbt==0.21.0
 
copy . /app
CMD ["python","dbt.py"]