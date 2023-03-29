import subprocess

def dbt_command(cmd):
    try:
        output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
        return output.decode('utf-8')
    except subprocess.CalledProcessErro as e:
        print(e.output.decode('utf-8'))
        raise

dbt_command('dbt run')
dbt_command('dbt test')