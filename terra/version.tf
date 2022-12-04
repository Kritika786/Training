terraform {
   required_version = "~>0.14"
  required_provioders{
      aws={
          source="hashicorp/aws"
          version="~>3.0"
      }
  }
}
provider "aws" {
    region = var.region
  
}
