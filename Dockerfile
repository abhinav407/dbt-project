FROM python:3.8-slim-buster

WORKDIR /app

RUN pip3 install dbt

COPY main.py /app/main.py 

ENTRYPOINT ["python","/app/main.py"]

	