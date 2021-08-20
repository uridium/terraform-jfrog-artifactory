resource "artifactory_local_repository" "this" {
  key             = var.key
  package_type    = var.package_type
  repo_layout_ref = var.repo_layout[var.package_type]
  description     = var.description
  xray_index      = var.xray_index
}

resource "random_password" "this" {
  length  = 16
  special = true
}

resource "artifactory_user" "this" {
  name              = var.key
  password          = random_password.this.result
  email             = var.email
  profile_updatable = false
  disable_ui_access = true
}

resource "artifactory_permission_target" "this" {
  name = var.key

  repo {
    repositories = [artifactory_local_repository.this.key]

    actions {
      users {
        name        = artifactory_user.this.name
        permissions = ["read", "write"]
      }
    }
  }
}
