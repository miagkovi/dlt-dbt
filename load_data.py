import dlt
import requests


data = requests.get("https://jsonplaceholder.typicode.com/posts").json()

pipeline = dlt.pipeline(
    pipeline_name="my_pipeline",
    destination="duckdb",
    dataset_name="raw_data" # DB schema name
)

info = pipeline.run(data, table_name="posts")
print(info)