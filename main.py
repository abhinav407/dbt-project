import subprocess 

def dbt():
    subprocess.run(
        ["dbt","run"]
    )

if __name__ == "__main__":
    dbt()