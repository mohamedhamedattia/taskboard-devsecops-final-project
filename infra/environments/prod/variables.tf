variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "cluster_name" {
  description = "EKS cluster name, also used as the resource name prefix"
  type        = string
  default     = "taskboard-prod"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
