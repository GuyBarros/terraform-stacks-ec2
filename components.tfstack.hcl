component "vpc" {
  source = "./vpc"

  inputs = {
  }

  providers = {
    aws    = provider.aws.this
  }
}

component "ec2" {
  source = "./ec2"

  inputs = {
    network       = component.vpc
    key_pair_name = var.key_pair_name
  }

  providers = {
    aws     = provider.aws.this
  }
}
