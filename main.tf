provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "s3-mybucket-webapp.example.com"
  acl    = "public-read"
  # Add specefic S3 policy in the s3-policy.json on the same directory
  #policy = file("s3-policy.json")
  policy = templatefile("templates/s3-policy.json", { bucket = "s3-mybucket-webapp.example.com" })

  versioning {
    enabled = false
  }

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Environment = "development"
    Name        = "my-tag"
  }

}