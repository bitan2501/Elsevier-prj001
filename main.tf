provider "aws" {
  access_key="AKIAYWSJOFXB6EXJMVJC"
  secret_key="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"
  region = var.aws_region
}

# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = var.tag_name
  }
}
