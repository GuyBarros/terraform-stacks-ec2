identity_token "aws" {
  audience = ["terraform-stacks-private-preview"]
}

deployment "production" {
  variables = {
    region              = "eu-west-2"
    availability_zones  = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
    role_arn            = "arn:aws:iam::958215610051:role/tfc-wif-guybarros"
    identity_token_file = identity_token.aws.jwt_filename
    default_tags      = { stacks-preview-example = "vpc-ec2-stack" }
    key_pair_name       = "manual-kp"
  }
}
