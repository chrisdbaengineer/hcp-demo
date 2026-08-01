#terraform {
#    cloud {
#        organization = "my-first-org-hcp"
#        hostname = "app.terraform.io"
#
#        workspaces {
#            project = "networking-development"
#
#            tags = {
#                layer = "networking"
#                source = "cli"
#            }
#        }
#    }
#}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }

  required_version = "1.15.8"
  cloud {

    organization = "my-first-org-hcp"

    workspaces {
      name = "hcp-demo"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}