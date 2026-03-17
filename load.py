import kagglehub
import dlt
import pandas as pd
import os

# 1. Download the new dataset
# Handle: ylenialongo/pizza-sales
path = kagglehub.dataset_download("ylenialongo/pizza-sales")

# 2. Define the pipeline
pipeline = dlt.pipeline(
    pipeline_name="pizza_ingestion",
    destination="duckdb", 
    dataset_name="raw_pizza" 
)

@dlt.source
def pizza_source(data_path):
    # This creates a separate resource for every CSV file
    for root, dirs, files in os.walk(data_path):
        for file in files:
            if file.endswith(".csv"):
                # Clean name: 'Pizza Sales.csv' -> 'pizza_sales'
                table_name = file.replace(".csv", "").replace(" ", "_").lower()
                
                # We yield a dlt.resource that points to the data
                yield dlt.resource(
                    pd.read_csv(os.path.join(root, file), encoding="ISO-8859-1"), # Added encoding
                    name=table_name,
                    write_disposition="replace" # Good for fresh starts
                )

# Run the pipeline using the source
info = pipeline.run(pizza_source(path))
print(info)