# List aws Buckets

# List all buckets name in S3 order by creadted date
aws s3api list-buckets \
--query "Buckets | sort_by(@, &CreationDate) | reverse(@) | [].Name" \
--output text \
| tr '\t' '\n'