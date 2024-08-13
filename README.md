# Spotify Data Pipeline Model

## Overview
This project showcases a scalable data engineering ecosystem built on AWS Cloud to efficiently ingest, transform, and warehouse Spotify data. The architecture leverages serverless computing to ensure high scalability and low operational costs.

## Key Features
- Automated ETL pipeline using AWS Glue for efficient data extraction, cleansing, and storage in an S3 data lake.
- Integration of AWS Glue Crawler and Athena for dynamic schema generation and querying.
- Real-time analytics capabilities with optimized data processing.

## Technologies Used
- **Languages**: Python, SQL
- **Cloud Services**: AWS S3, AWS Glue, AWS Athena
- **Tools**: AWS Glue Crawler, AWS Lambda, AWS CloudFormation

## Project Structure
- `etl_pipeline.py`: Contains the Python script for the ETL process.
- `database_schema.sql`: Sample SQL queries for creating the expanded database schema.
- `aws_setup.md`: Step-by-step guide to setting up the AWS services.
- `sample_data.csv`: Mock data (now with 1000+ rows) used for testing.

## Getting Started
1. Clone the repository.
2. Follow the steps in `aws_setup.md` to configure AWS services.
3. Run the `etl_pipeline.py` script to start the ETL process.

## License
This project is licensed under the MIT License.
