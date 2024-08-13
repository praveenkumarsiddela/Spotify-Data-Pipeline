# AWS Setup Guide

## Step 1: Create an S3 Bucket
1. Log in to your AWS account.
2. Navigate to the S3 service.
3. Click "Create bucket" and follow the prompts.

## Step 2: Set Up AWS Glue
1. Go to the AWS Glue service.
2. Create a new Glue Crawler and point it to your S3 bucket.
3. Define the database and tables for your crawler.

## Step 3: Configure AWS Athena
1. Access the Athena service from the AWS console.
2. Set up a new database in Athena and link it to the tables created by the Glue Crawler.
3. Start querying your data!

## Step 4: Deploy Lambda Functions (Optional)
1. Create a new Lambda function to automate the ETL process.
2. Use the `etl_pipeline.py` script as your Lambda function code.
