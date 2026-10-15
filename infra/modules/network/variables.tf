variable "name" {
  description = "Prefix for resource names"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name (used in subnet tags so the load balancer controller finds the subnets)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones to use (2 for this project)"
  type        = list(string)

  validation {
    condition     = length(var.azs) == 2
    error_message = "Use exactly 2 availability zones."
  }
}
