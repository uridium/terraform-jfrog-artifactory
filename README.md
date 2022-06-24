# Terraform JFrog Artifactory module

[![GitHub Actions](https://github.com/uridium/terraform-jfrog-artifactory/workflows/generate-changelog/badge.svg)](https://github.com/uridium/terraform-jfrog-artifactory/actions)
[![Latest tag](https://img.shields.io/github/v/tag/uridium/terraform-jfrog-artifactory)](https://registry.terraform.io/modules/uridium/artifactory/jfrog)

Terraform JFrog module which creates a Local Artifactory repository.

It also creates a user with randomly generated password, a permission target, and assigns everything to the repository.

## Usage

```hcl
module "repository" {
  source = "git@github.com:uridium/terraform-jfrog-artifactory.git"

  key          = "go-repository"
  package_type = "go"
  description  = "Golang repository"
  email        = "contact@email.com"
}
```

### Development

This module uses [pre-commit](https://pre-commit.com/) hook to identify simple issues before pushing code to the remote repository, and relies on *.pre-commit-config.yaml* file.

To use it simply run:

```bash
pip install pre-commit
pre-commit install
```

Now `pre-commit` will run automatically on every `git commit`.

## Notes

This module requires `ARTIFACTORY_URL` and `ARTIFACTORY_ACCESS_TOKEN` variables to be set up.

For example:

```bash
export ARTIFACTORY_URL="https://repo.domain.com/artifactory"
export ARTIFACTORY_ACCESS_TOKEN="<Token>"
```

Keep in mind that this module uses [random_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) resource to set up a password for `artifactory_user`. That means you have to treat your state file as a secret and store it in a [remote S3 backend](https://www.terraform.io/language/settings/backends/s3), which [encrypts data at rest](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html) and in transit.

You also need to create strict IAM policies to control access to your state file.

## Examples

* [Docker](https://github.com/uridium/terraform-jfrog-artifactory/tree/master/examples/docker)
* [Maven](https://github.com/uridium/terraform-jfrog-artifactory/tree/master/examples/maven)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_artifactory"></a> [artifactory](#requirement\_artifactory) | ~> 5.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.3.0 |

## Resources

| Name | Type |
|------|------|
| [artifactory_local_repository.this](https://registry.terraform.io/providers/jfrog/artifactory/latest/docs/resources/local_repository) | resource |
| [artifactory_permission_target.this](https://registry.terraform.io/providers/jfrog/artifactory/latest/docs/resources/permission_target) | resource |
| [artifactory_user.this](https://registry.terraform.io/providers/jfrog/artifactory/latest/docs/resources/user) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Repository description | `string` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | Repository email | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | Repository name | `string` | n/a | yes |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | Repository package type | `string` | n/a | yes |
| <a name="input_repo_layout"></a> [repo\_layout](#input\_repo\_layout) | Repository layout type | `map(any)` | <pre>{<br>  "alpine": "simple-default",<br>  "bower": "bower-default",<br>  "cargo": "cargo-default",<br>  "chef": "simple-default",<br>  "cocoapods": "simple-default",<br>  "composer": "composer-default",<br>  "conan": "conan-default",<br>  "conda": "simple-default",<br>  "cran": "simple-default",<br>  "debian": "simple-default",<br>  "docker": "simple-default",<br>  "gems": "simple-default",<br>  "generic": "simple-default",<br>  "gitlfs": "simple-default",<br>  "go": "go-default",<br>  "gradle": "maven-2-default",<br>  "helm": "simple-default",<br>  "ivy": "ivy-default",<br>  "maven": "maven-2-default",<br>  "npm": "npm-default",<br>  "nuget": "nuget-default",<br>  "opkg": "simple-default",<br>  "puppet": "puppet-default",<br>  "pypi": "simple-default",<br>  "rpm": "simple-default",<br>  "sbt": "sbt-default",<br>  "vagrant": "simple-default"<br>}</pre> | no |
| <a name="input_xray_index"></a> [xray\_index](#input\_xray\_index) | Indexing in Xray | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_description"></a> [repository\_description](#output\_repository\_description) | Repository description |
| <a name="output_repository_key"></a> [repository\_key](#output\_repository\_key) | Repository name |
| <a name="output_repository_layout"></a> [repository\_layout](#output\_repository\_layout) | Repository layout type |
| <a name="output_repository_login"></a> [repository\_login](#output\_repository\_login) | Repository login |
| <a name="output_repository_package_type"></a> [repository\_package\_type](#output\_repository\_package\_type) | Repository package type |
| <a name="output_repository_password"></a> [repository\_password](#output\_repository\_password) | Repository password |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
