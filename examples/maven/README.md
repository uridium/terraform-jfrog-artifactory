# Maven Artifactory configuration

This example creates a `maven-packages` repository along with `maven-packages` username, its password, and a target.

## Usage

### Running Terraform

```bash
export ARTIFACTORY_URL="https://repo.domain.com/artifactory"
export ARTIFACTORY_ACCESS_TOKEN="<Token>"
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
