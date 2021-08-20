terraform {
  required_version = "~> 1.0"

  required_providers {
    artifactory = {
      source  = "jfrog/artifactory"
      version = "~> 2.2.15"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}
