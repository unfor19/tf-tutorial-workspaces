provider "aws" {
  version = "~> 2.28"
  profile = "${lookup(local.profile, local.environment)}"
  region  = "${lookup(local.region, local.environment)}"
}

terraform {
  required_version = "~> 0.12"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "tutorials"
    workspaces { prefix = "tf-tutorial-workspaces-" }
  }
}
