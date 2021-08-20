output "repository_name" {
  value = module.repository.repository_key
}

output "repository_type" {
  value = module.repository.repository_package_type
}

output "repository_login" {
  value = module.repository.repository_login
}

output "repository_password" {
  value     = module.repository.repository_password
  sensitive = true
}
