
# Configure the AWS Provider
provider "aws" {
  s3_use_path_style            = true
  skip_credentials_validation  = true
  skip_metadata_api_check      = true
  skip_requesting_account_id   = true
}

# Define an S3 resource
resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "mlops"
  }
}