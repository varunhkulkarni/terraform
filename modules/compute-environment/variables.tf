variable "envtags" {
    type = map(string)
    description = "envs tags to be applied for the AWS service"  
}

variable "region" {
    type = string
    default = "us-east-1"
    description = "region for the aws provider to use"
}

### This is changed based on your requirement. If you are using default AWS AMI then no need of this
### We have requirement to fetch the AMI Id from SSM path so adding the path here
variable "image_id_ssm_path" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
  description = "A list of EC2 security group that are associated with instances launched by compute envs"
  default = []
}

variable "vpcenv" {
  type = string
}

variable "compute_environment_instance_type" {
  type = string
}

variable "compute_environment_service_iam_role" {
  type = string  
}

variable "compute_environment_state" {
  type = string
}

variable "compute_environment_allocation_strategy" {
  type = string
}


variable "compute_environment_min_vcpu" {
  type = string
}

variable "compute_environment_max_vcpu" {
  type = string
}

variable "compute_environment_aws_managed_type" {
  type = string
}

variable "compute_environment_instance_type_list" {
  type = list(string)
}

variable "compute_environment_instance_iam_role" {
  type = string
}

variable "compute_environment_name" {
  type = string  
}