module "repository" {
  source       = "../.."

  key          = "my-docker-registry"
  package_type = "docker"
  description  = "Docker images registry2"
  email        = "contact@email.comf"
}
