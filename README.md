# dlt-dbt

## Data Engineering Pipeline: dlt + dbt + DuckDB
A modern local data stack project demonstrating a complete ELT (Extract, Load, Transform) workflow.

Dataset source https://www.kaggle.com/datasets/ylenialongo/pizza-sales

Install dependencies:

```
pip3 install -r requirements.txt
```

Run dataset load script:

```
python3 load.py
```

Run dbt in `pizza_transform` dir:

```
dbt run --profiles-dir ..
```