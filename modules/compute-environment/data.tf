locals {
  securityGroupIds = var.security_group_ids
}

### This is changed based on your requirement. If you are using default AWS AMI then no need of this
### We have requirement to fetch the AMI Id from SSM path so adding the path here

data "asw_ssm_parameter" "ami_id" {
  name = var.image_id_ssm_path
}

data "aws_region" "current" {
  
}

data "aws_vpc" "selected" {
    filter {
      name = "isDefault"
      values = [ "false" ]
    }  
}

data "aws_security_groups" "commons_sg" {
  filter {
    name = "vpc-id"
    values = [ data.data.aws_vpc.selected.id ]
  }

  filter {
    name = "group-name"
    values = local.securityGroupIds
  }
}

data "aws_subnets" "selected_subnet_pvt" {
    filter {
      name = "vpc-id"
      values = [ data.aws_vpc.selected.id ]
    }

    filter {
      name = "tag:Name"
      values = [ "subnet-to-add" ]
    }

  
}