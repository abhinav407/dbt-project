FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y git

RUN pip install dbt

COPY mani.py /app/main.py

ENTRYPOINT ["python","/app/main.py"]