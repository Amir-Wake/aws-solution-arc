echo "Setting up AWS ..."

aws configure set aws_access_key_id "$AWS_ACCESS_KEY"
aws configure set aws_secret_access_key "$AWS_SECRET_KEY"
aws configure set region "wu-west-2"
aws configure set output "json"

echo "AWS configured successfully..."