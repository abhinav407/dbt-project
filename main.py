from flask import Flask
import subprocess
app = Flask(__name__)


@app.route("/")
def dbt():
    subprocess.run(
        ["dbt","run"]
    )
