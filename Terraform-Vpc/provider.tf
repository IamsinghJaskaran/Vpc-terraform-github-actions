terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.1"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "mybucketbyjaskaransingh"
    key    = "dev/terrform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}