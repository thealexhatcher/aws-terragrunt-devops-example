
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_s3_bucket" "example" {
    bucket = "terragrunt-${var.environment}-${data.aws_region.current.name}-${data.aws_caller_identity.current.account_id}"
}

variable "environment" {}