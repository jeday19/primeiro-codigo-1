# Centralizar o arquivo de controle de estado do terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
  backend "s3" {
    bucket = "aula1-jesse"
    key    = "state/aws/terraform.tfstate"
    region = "us-east-1"
  }
}