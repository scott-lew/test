terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.GITHUB_TOKEN
}

data "github_repository" "test" {
  full_name = "scott-lew/test"
}

output "test" {
  value = data.github_repository.test
}

variable "GITHUB_TOKEN" {}