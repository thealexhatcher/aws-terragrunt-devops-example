locals {
  environment = "dev"
}

terraform {
  source = "../../tf/example"
}

inputs = {
  environment = locals.environment
}