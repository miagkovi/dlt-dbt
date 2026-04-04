# Data Engineering Pipeline: dlt + dbt + DuckDB

Educational data engineering ELT pipeline. Tech stack:
1. kagglehub - data provider's client
2. dlt - data load tool
3. dbt - database build tool
4. duckdb - analytics ligthweigth database

kaggle dataset (pizza sales) -> dlt -> duckdb (raw) -> dbt -> duckdb (stage, final)

dbt transformations:

raw (source) -> stage -> marts (fct_pizza_sales)

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

Install the packages:

```
dbt deps --profiles-dir ..
```

Run dbt:

```
dbt run --profiles-dir ..
```

Run tests:

```
dbt test --profiles-dir ..
```

Clean and Compile:

```
dbt clean && dbt compile --profiles-dir ..
```