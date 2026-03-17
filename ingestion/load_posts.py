import dlt
import requests

@dlt.resource(name="posts")
def posts():
    response = requests.get("https://jsonplaceholder.typicode.com/posts")
    yield response.json()

pipeline = dlt.pipeline(
    pipeline_name="jsonplaceholder",
    destination="duckdb",
    dataset_name="raw"
)

pipeline.run(posts())