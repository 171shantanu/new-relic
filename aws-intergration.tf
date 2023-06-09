# data block to fetch the arn of the AWS IAM role
data "aws_iam_role" "new_relic_role" {
  name = "new-relic-role"
}

# Resource that integrates the AWS account with New Relic
resource "newrelic_cloud_aws_link_account" "aws_integration" {
  arn                    = data.aws_iam_role.new_relic_role.arn
  metric_collection_mode = "PULL"
  name                   = "Shantanu"
}

# AWS Serivce Integrations with New Relic
# This resource block does not support all the AWS services that can be integrated with New Relic
resource "newrelic_cloud_aws_integrations" "aws_integration" {
  linked_account_id = newrelic_cloud_aws_link_account.aws_integration.id
  billing {
    metrics_polling_interval = 0
  }

  health {
    metrics_polling_interval = 0
  }

  vpc {
    aws_regions              = []
    fetch_nat_gateway        = false
    fetch_vpn                = false
    metrics_polling_interval = 0
  }
}
