variable "envtags" {
    type = map(string)
    description = "envs tags to be applied for the AWS service"  
}

variable "region" {
    type = string
    default = "us-east-1"
    description = "region for the aws provider to use"
}

variable "job_queue_name" {
  type = string
}

variable "job_queue_state" {
  type = string
}

variable "job_queue_priority" {
  type = string
}

variable "job_queue_compute_environment_list" {
    type = list(string)
  
}