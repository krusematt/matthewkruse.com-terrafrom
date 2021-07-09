terraform {
  backend "s3" {
    bucket = "matthewkruse.com-tfstate"
    key = "tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  version                 = "~> 2.0"
  region                  = "us-east-2"
  shared_credentials_file = "~/.aws/credentials"
}

module "aws_static_website" {
  source = "cloudmaniac/static-website/aws"

  website-domain-main     = "matthewkruse.com"
  website-domain-redirect = "www.matthewkruse.com"
}
