# dlt-dbt

## Data Engineering Pipeline: dlt + dbt + DuckDB
A modern local data stack project demonstrating a complete ELT (Extract, Load, Transform) workflow.

### 🛠 Tech Stack
Extraction & Loading: dlt (data load tool)

Storage: DuckDB (In-process OLAP database)

Transformation: dbt (data build tool)

### 📂 Project Structure
load_data.py: Python script using dlt to fetch data from API and load it into DuckDB.

transform/: dbt project directory containing SQL transformations.

data/: Directory for the .duckdb database file.

### 🚀 Getting Started
1. Environment Setup

```Bash
python -m venv venv
source venv/bin/activate
pip install "dlt[duckdb]" dbt-duckdb
```

2. Run Ingestion (EL)
Executes the dlt pipeline to fetch raw data.

```Bash
python load_data.py
```

3. Run Transformations (T)
Navigate to the dbt project and execute models.

```Bash
cd transform
dbt deps --profiles-dir .
dbt build --profiles-dir .
```

### 📊 Data Flow
Source: External API (JSON)

Raw Layer: raw_data schema in DuckDB (managed by dlt)

Analytics Layer: main schema (managed by dbt models)
