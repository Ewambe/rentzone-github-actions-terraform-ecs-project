# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "rent-zone-cicd-m"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}
