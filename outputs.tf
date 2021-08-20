output "repository_key" {
  description = "Repository name"
  value       = artifactory_local_repository.this.key
}

output "repository_package_type" {
  description = "Repository package type"
  value       = artifactory_local_repository.this.package_type
}

output "repository_layout" {
  description = "Repository layout type"
  value       = artifactory_local_repository.this.repo_layout_ref
}

output "repository_description" {
  description = "Repository description"
  value       = artifactory_local_repository.this.description
}

output "repository_login" {
  description = "Repository login"
  value       = artifactory_user.this.name
}

output "repository_password" {
  description = "Repository password"
  value       = random_password.this.result
  sensitive   = true
}
