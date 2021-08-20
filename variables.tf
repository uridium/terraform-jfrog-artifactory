variable "key" {
  description = "Repository name"
  type        = string
}

variable "package_type" {
  description = "Repository package type"
  type        = string
}

variable "repo_layout" {
  description = "Repository layout type"
  type        = map(any)
  default = {
    "bower"     = "bower-default"
    "chef"      = "simple-default"
    "cocoapods" = "simple-default"
    "conan"     = "conan-default"
    "conda"     = "simple-default"
    "cran"      = "simple-default"
    "debian"    = "simple-default"
    "docker"    = "simple-default"
    "gems"      = "simple-default"
    "gitlfs"    = "simple-default"
    "go"        = "go-default"
    "gradle"    = "gradle-default"
    "helm"      = "simple-default"
    "ivy"       = "ivy-default"
    "maven"     = "maven-2-default"
    "npm"       = "npm-default"
    "nuget"     = "nuget-default"
    "opkg"      = "simple-default"
    "composer"  = "composer-default"
    "pypi"      = "simple-default"
    "puppet"    = "puppet-default"
    "sbt"       = "sbt-default"
    "vagrant"   = "simple-default"
    "rpm"       = "simple-default"
    "generic"   = "simple-default"
  }
}

variable "description" {
  description = "Repository description"
  type        = string
}

variable "email" {
  description = "Repository email"
  type        = string
}

variable "xray_index" {
  description = "Indexing in Xray"
  type        = bool
  default     = false
}
