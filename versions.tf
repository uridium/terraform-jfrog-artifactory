terraform {
  required_version = ">= 1.2"

  required_providers {
    artifactory = {
      source  = "jfrog/artifactory"
      version = "~> 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.3.0"
    }
  }
}
