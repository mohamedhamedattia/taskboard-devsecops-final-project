variable "aws_region" {
  description = "AWS region for everything in this project"
  type        = string
  default     = "eu-west-1"
}

variable "github_repository" {
  description = "GitHub repository allowed to assume the infra role, in the form owner/repo"
  type        = string

  validation {
    condition     = can(regex("^[A-Za-z0-9-]+/[A-Za-z0-9._-]+$", var.github_repository))
    error_message = "Use the form owner/repo, for example mohamed/taskboard."
  }
}

variable "state_bucket_name" {
  description = "Globally unique name for the Terraform state bucket"
  type        = string
}

variable "infra_environment_name" {
  description = "GitHub environment that protects terraform apply"
  type        = string
  default     = "infrastructure"
}
