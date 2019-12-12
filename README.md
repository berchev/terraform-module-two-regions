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
```
git clone https://github.com/berchev/terraform-module-two-regions
```
- change into the new directory
```
cd terraform-module-two-regions
```

- set AWS terraform variables
```
export AWS_ACCESS_KEY_ID="XXXXXXXXXXX"
export  AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXX"
```

- download terraform providers code
```
terraform init
```

- run terraform plab to see the actions will be performed
```
terraform plan
```

- create the resources
```
terraform apply
```

- destroy the resources after they are no longer needed
```
terraforn destroy
```

