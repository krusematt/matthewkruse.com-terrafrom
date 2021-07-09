# Terraform to Create Static Site in S3/CloudFront

## Requirements
* Must have a hosted zone for the domain you want to use in Route53
* Create an s3 bucket to save your tfstate file

## Usage

Be sure to `aws configure` so your AWS api creds file gets populated.   Then update the `main.tf` file with your domain name and the s3 bucket you want to save your TF state file to.