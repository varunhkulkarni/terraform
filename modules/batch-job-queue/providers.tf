terraform {
    required_version = ">= 0.13"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 0.12.26"
        }
    }
}
provider "aws" {
    region = var.region
}