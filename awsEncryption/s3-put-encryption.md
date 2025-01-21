# put file with encryption

# create an ecryption key
openssl rand -out s3ssc.key 32

# put file into s3 with encryption
aws s3 cp test.txt s3://am2-test-bucket1/test.txt \
--sse-c AES256 \
--sse-c-key fileb://s3ssc.key

# download test.txt file with decryption
aws s3 cp s3://am2-test-bucket1/test.txt test.txt \
--sse-c AES256 \
--sse-c-key fileb://s3ssc.key