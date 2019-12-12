provider "aws" {
  alias  = "varna"
  region = "us-east-1"
}

provider "aws" {
  alias  = "sofia"
  region = "eu-west-1"
}

module "bucket_east" {
  source      = "./module"
  bucket_name = "georgiman-varna-city-bucket"
  providers = {
    aws = aws.varna
  }
}

module "bucket_west" {
  source      = "./module"
  bucket_name = "georgiman-sofia-city-bucket"
  providers = {
    aws = aws.sofia
  }
}