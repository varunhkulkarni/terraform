region = "us-east-1"
environment = "DEV"
envtags = {
    createdby = "Varun Kulkarni"
    contact = "varunkulkarnius@gmail.com"
    environment = "dev"
    version = "1.0"
}

vpc = "vpc-id"
image_id_ssm_path = "/image/path"
vpcenv = "dev"

#########################################
######### COMPUTE ENVIRONMENT ###########
#########################################

compute_environment_state = "ENABLED"
compute_environment_aws_managed_type = "MANAGED"
compute_environment_instance_type = "EC2"
compute_environment_allocation_strategy = "BEST_FTT_PROGRESSIVE"
compute_environment_service_iam_role = "batch-service-role-id"
compute_environment_instance_iam_role = "batch-instance-role-id"
compute_environment_min_vcpu = "0"
compute_environment_max_vcpu = "48"
compute_environment_instance_type_list = ["optimal"]
compute_environment_subnet_list = ["subnet-1-id", "subnet-2-id"]
compute_environment_name = "batch-processing-batch-compute"


#########################################
######### BATCH JOB QUEUE ###############
#########################################

job_queue_name = "batch-job-queue"
job_queue_state = "ENABLED"
job_queue_priority = 100
job_queue_compute_environment_list = ["batch-processing-batch-compute"]


