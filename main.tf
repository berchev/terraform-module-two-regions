# Bulgaria east city provider definition
provider "aws" {
  alias  = "varna"
  region = "us-east-1"
}

# Bulgaria west city provider definition
provider "aws" {
  alias  = "sofia"
  region = "eu-west-1"
}

# Creation of bucket in the east side of Bulgaria
module "bucket_east" {
  source      = "./module"
  bucket_name = "georgiman-varna-city-bucket"
  providers = {
    aws = aws.varna
  }
}

# Creation of bucket in the west side of Bulgaria
module "bucket_west" {
  source      = "./module"
  bucket_name = "georgiman-sofia-city-bucket"
  providers = {
    aws = aws.sofia
  }
}
