data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = { 
    bucket = "b50-terraform-state-bucket"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1" 
  } 
}