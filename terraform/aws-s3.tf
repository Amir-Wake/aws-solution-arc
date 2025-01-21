resource "aws_s3_bucket" "am1922-tf-bucket" {
  bucket = "am1922-my-tf-test-bucket"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}