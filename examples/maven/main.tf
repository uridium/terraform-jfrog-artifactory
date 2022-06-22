module "repository" {
  source       = "../.."

  key          = "my-maven-repository"
  package_type = "maven"
  description  = "Maven packages repository"
  email        = "contact@email.com"
}
