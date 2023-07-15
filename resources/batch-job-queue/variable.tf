variable "envtags" {
    type = map(string)
    description = "envs tags to be applied for the AWS service"  
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

variable "compute_environment_list" {
    type = list(string)
  
}