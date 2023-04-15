The main purpose of this project is to create new relic dashboards and alerts using IaC via Terraform.

# New Relic Credentials 
The credentials for new relic are being provided using environmental  variables. 
Account ID to be set must be the ID of your New Relic Account.
API Key to set should be the key of your new relic user.

# AWS Credentials
Will need to set the AWS Profile as an environmental variable for the remote backend.

# Need to know
The terraform resource "newrelic_cloud_aws_integrations" does not have support for all the AWS services that New Relic can integrate with. 
The unsuppported service are manually managed.