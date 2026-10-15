output "ecr_repository_url" {
  description = "GitHub variable ECR_REPOSITORY_URL and chart value backend.image.repository"
  value       = module.ecr.repository_url
}

output "vpc_id" {
  value = module.network.vpc_id
}
