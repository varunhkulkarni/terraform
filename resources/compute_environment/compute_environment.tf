resource "aws_batch_compute_environment" "batch_compute_environment_tf" {
  
    compute_environment_name =  var.compute_environment_name
    type = var.compute_type
    service_role = var.service_role
    state = var.state
    
    tags = var.envtags

    compute_resources {
      image_id = var.ami
      instance_role = var.instance_role
      instance_type = var.instance_type
      allocation_strategy = var.alloation_strategy
      min_vcpus = var.min_vcpu
      security_group_ids = var.secuirty_group_ids
      subnets = var.subnets
      type = var.compute_resource_type
      tags = var.envtags
    }
}