variable "region" {
  description = "Region to deploy in, e.g. us-east-1"
  type        = string
}

terraform {
  required_version = ">= 0.13.0"
  required_providers {
    aws = "~> 3.75.2"
  }
}

provider "aws" {
  region = var.region
}
