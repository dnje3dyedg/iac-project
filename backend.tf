terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-xyz-123"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}