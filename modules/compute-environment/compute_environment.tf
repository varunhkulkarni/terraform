module "aws_batch_compute_environment_version" {
    source = "../../resources/compute_environment"
    
    compute_environment_name = var.compute_environment_name
    compute_type = var.compute_environment_aws_managed_type
    service_role = var.compute_environment_service_iam_role
    instance_role = var.compute_environment_instance_iam_role
    instance_type = var.compute_environment_instance_type_list
    state = var.compute_environment_state
    ami = data.asw_ssm_parameter.ami.id.value
    security_group_ids = data.aws_security_groups.commons_sg.ids
    subnets = data.aws_subnets.selected_subnet_pvt.ids
    allocation_strategy = var.compute_environment_allocation_strategy
    min_vcpus = var.compute_environment_min_vcpu
    max_vcpus = var.compute_environment_max_vcpu
    compute_resource_type = var.compute_environment_instance_type

    envtags = var.envtags
}