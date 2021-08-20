module "repository" {
  source       = "../.."

  key          = "maven-packages"
  package_type = "maven"
  description  = "Maven packages repository"
  email        = "contact@email.com"
}
