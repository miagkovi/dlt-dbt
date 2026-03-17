# dlt-dbt
Data Engineering Pipeline: dlt, dbt and duckdb

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
