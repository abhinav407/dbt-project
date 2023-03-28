from flask import flask
import subprocess

app = Flask(__name__)

def dbt():
    dbt_run = subprocess.run(
        ["dbt","run"],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    return dbt_run