# dbconnect-docker
This Dockerfile has Java and python3 dependancies need to run Databricks Connect. Has a example script that invokes spark to test connectivity can be replaced with your script as an cmd. Tags are matched with the pip install version of databricks-connect.

Has default envs -
```bash
PORT=15001
ORG=0
```
You will need to provide the following envs -
```bash
SHARD='https://yourshard.cloud.databricks.com'
CLUSTERID=1110-025932-xxxx
TOKEN='yourtoken'
```

The docker-entrypoint.sh takes the ENVS you provide and creates the ~/.databricks-connect

### Example usage 1
Runs the example_dbconnect.py script provided
```bash
docker run -t \
-e SHARD='https://yourshard.cloud.databricks.com' \
-e CLUSTERID=1110-025932-xxxx \
-e TOKEN='yourtoken' \
dbconnecttest:latest
```

### Example usage 2
Runs the databricks-connect test
```bash
docker run -t \
-e SHARD='https://yourshard.cloud.databricks.com' \
-e CLUSTERID=1110-025932-xxxx \
-e TOKEN='yourtoken' \
dbconnecttest:latest databricks-connect test
```
### Example usage 3
Runs your pyspark project
```bash
docker run -t \
-e SHARD='https://yourshard.cloud.databricks.com' \
-e CLUSTERID=1110-025932-xxxx \
-e TOKEN='yourtoken' \
-v ./yourpysparkproject:/yourpysparkproject
dbconnecttest:latest python /yourpysparkproject/main.py
```