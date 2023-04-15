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
