# terraform-module-two-regions

## Description
The code is just an example of deploying resources(S3 bucket) of two different regions at the same time using module.
The same module is called twice.
In order to accomplish this task, definig of two providers is needed.
bucket name is cointrolled by variable.

## Requirements
terraform version 0.12.x installed
AWS Account 

## How to use
- clone the repo locally
- export AWS_ACCESS_KEY_ID="XXXXXXXXXXX"
- export export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXX"
- change to downloaded directory
- terraform init
- terraform plan
- terraform apply
