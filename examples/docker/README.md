# Docker Artifactory configuration

This example creates a `docker-registry` repository along with `docker-registry` username, its password, and a target.

## Usage

### Running Terraform

```bash
export ARTIFACTORY_URL="https://repo.domain.com/artifactory"
export ARTIFACTORY_USERNAME="<terraform_username>"
export ARTIFACTORY_PASSWORD="<terraform_password>"
```

```bash
terraform init
terraform apply
```

## Notes

To see repository settings run:

```bash
terraform output
```

To see a user's password run:

```bash
terraform output repository_password
```