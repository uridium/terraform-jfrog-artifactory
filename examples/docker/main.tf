module "repository" {
  source       = "../.."

  key          = "docker-registry"
  package_type = "docker"
  description  = "Docker images registry"
  email        = "contact@email.com"
}
