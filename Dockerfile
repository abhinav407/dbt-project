FROM python:3.8-slim-buster

WORKDIR /app

RUN pip3 install dbt

COPY . ./ 

ENTRYPOINT ["dbt()"]