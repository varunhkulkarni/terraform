module "aws_batch_job_queue_version"{
    source = "../../resources/batch-job-queue"
    
    job_queue_name = var.job_queue_name
    job_queue_state = var.job_queue_state
    job_queue_priority = var.job_queue_priority
    compute_environments_list = var.job_queue_compute_environment_list

    envtags = var.tags
}