import boto3
import logging
from botocore.exceptions import ClientError

s3 = boto3.client('s3')
res = s3.list_buckets()

print('Existing buckets:')
for bucket in res['Buckets']:
    print(f'  {bucket["Name"]}')

# Write file to s3

# Create a text file and write to it
with open('test2.txt', 'w') as f:
    f.write('Hello, This is a test file created from python and uploaded to s3')

# Get last bucket name
bucket_name = res['Buckets'][-1]['Name']

# Upload file to s3
s3.upload_file('test2.txt', bucket_name, 'test2.txt')

# list objects in bucket
objects = s3.list_objects_v2(Bucket=bucket_name)

# Sort objects by LastModified date in descending order and print their keys
if 'Contents' in objects:
    sorted_objects = sorted(objects['Contents'], key=lambda obj: obj['LastModified'], reverse=True)
    print(bucket_name,' Objects')
    for obj in sorted_objects:
        print(f'  {obj["Key"]}')
else:
    print('No objects found in the bucket.')