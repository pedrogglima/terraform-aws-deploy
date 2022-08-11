terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.25.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "website" {
  source      = "./.deploy/terraform/static-site"
  domain_name = "pedrogglima.com.br"
}
