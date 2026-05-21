terraform {
  backend "s3" {
    bucket         = "sayank-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}