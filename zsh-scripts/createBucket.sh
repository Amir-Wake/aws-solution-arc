#!/bin/zsh

# Create a bucket in S3

# Set AWS region and bucket name
region="eu-west-2"
bucketName="$1-am-$(date +%s)"

# Create the bucket
aws s3api create-bucket --bucket $bucketName --region $region --create-bucket-configuration LocationConstraint=$region

# Output the bucket name
echo "Bucket created: $bucketName"
