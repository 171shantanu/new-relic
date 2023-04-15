# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">=3.20.2"
    }
  }
  backend "s3" {
    bucket = "remotebackend-terraform"
    key    = "new-relic-backend/terraform.tfstate"
    region = "us-east-1"
  }
}

# Configuring the New Relic provider
provider "newrelic" {
  region = "EU"
}
