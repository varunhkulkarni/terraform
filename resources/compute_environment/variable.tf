variable "envtags" {
    type = map(string)
    description = "envs tags to be applied for the AWS service"  
}

variable "ami" {
  type = string  
}

variable "secuirty_group_ids" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "compute_environment_name" {
  type = string
}

variable "compute_type" {
  type = string
}

variable "service_role" {
  type = string  
}

variable "state" {
  type = string
}

variable "instance_role" {
  type = string
}

variable "instance_type" {
  type = list(string)
}

variable "alloation_strategy" {
  type = string
}

variable "min_vcpu" {
  type = string
}

variable "max_vcpu" {
  type = string
}

variable "compute_resource_type" {
  type = string
}



