variable "name" {
  description = "ECR repository name"
  type        = string
}

variable "max_sha_images" {
  description = "How many sha-* images to keep"
  type        = number
  default     = 30
}
