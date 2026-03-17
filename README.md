# Data Engineering Pipeline: dlt + dbt + DuckDB

Dataset: https://www.kaggle.com/datasets/ylenialongo/pizza-sales 

Install dependencies:

```
pip3 install -r requirements.txt
```

Load dataset (creates `pizza_ingestion.duckdb` file):

```
python3 load.py
```

Go to dbt project:

```
cd pizza_transform/
```

Run dbt:

```
dbt run --profiles-dir ..
```

Run tests:

```
dbt test --profiles-dir ..
```