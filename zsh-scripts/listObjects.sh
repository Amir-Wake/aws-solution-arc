# List objects in a bucket

# Get bucket name
bucketName=$1

# List all objects in the bucket
aws s3api list-objects \
--bucket $bucketName \
--query "Contents[].Key" \
--output text
