import boto3
import pandas as pd

def extract_data():
    # Simulate data extraction from Spotify API or S3
    data = pd.read_csv('sample_data.csv')
    return data

def transform_data(data):
    # Example transformation: clean and structure data
    data['duration_min'] = data['duration_ms'] / 60000  # Convert duration to minutes
    transformed_data = data.dropna().reset_index(drop=True)
    return transformed_data

def load_data(data):
    # Load data into S3 bucket (mock process)
    s3 = boto3.client('s3')
    s3.put_object(Bucket='your-bucket-name', Key='transformed_data.csv', Body=data.to_csv(index=False))

if __name__ == "__main__":
    raw_data = extract_data()
    clean_data = transform_data(raw_data)
    load_data(clean_data)
