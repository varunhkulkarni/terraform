resource "aws_batch_job_queue" "batch_job_queue" {
    name = var.job_queue_name
    state = var.job_queue_state
    priority = var.job_queue_state

    compute_environments =  var.compute_environment_list
    tags = var.envtags
}