output "state_bucket" {
  description = "Put in GitHub variable TF_STATE_BUCKET"
  value       = aws_s3_bucket.state.id
}

output "infra_role_arn" {
  description = "Put in GitHub variable AWS_INFRA_ROLE_ARN"
  value       = aws_iam_role.github_infra.arn
}

output "oidc_provider_arn" {
  description = "GitHub OIDC provider (reused by the githuboidc-role module)"
  value       = aws_iam_openid_connect_provider.github.arn
}
