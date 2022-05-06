provider "aws" {
  region  = "us-east-1"
}

/*resource "aws_s3_bucket" "mybucket" {
  bucket = "s3-mybucket250310-webapp002.example.com"
  acl    = "public-read"
  # Add specefic S3 policy in the s3-policy.json on the same directory
  #policy = file("s3-policy.json")
  #policy = templatefile("templates/s3-policy.json", { bucket = "s3-mybucket-webapp.example.com" })

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

}*/
#Upload files of your static website
resource "aws_s3_bucket_object" "html" {
  for_each = fileset("*.html")

  bucket = s3-mybucket250310-webapp002.example.com
  key    = each.value
  source = "../../mywebsite/${each.value}"
  etag   = filemd5("../../mywebsite/${each.value}")
  content_type = "text/html"
}
