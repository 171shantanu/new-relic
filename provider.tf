# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">=3.20.2"
    }
  }
}

# Configuring the New Relic provider
provider "newrelic" {
  region = "EU"
}
