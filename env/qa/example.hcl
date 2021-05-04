locals {
  environment = "dev"
}

terraform {
  source = "git::git@github.com:thealexhatcher/aws-terragrunt-devops-example.git//tf/example?ref=v1.0.0"
}

inputs = {
  environment = locals.environment
}