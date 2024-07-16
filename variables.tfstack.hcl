variable "region" {
  type = string
}

variable "identity_token_file" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}

variable "key_pair_name" {
  description = "A key pair name to use for the purposes of SSH login to EC2 instances. You can import your own key in the AWS console under EC2-> Key Pairs -> Import Key Pair"
  type = string
}

variable "network" {
  description = "Information about network objects declared elsewhere."
  type = object({
    vpc_id             = string
    private_subnet_ids = set(string)
  })
}

variable "key_pair_name" {
  description = "A key pair name to use for the purposes of SSH login to EC2 instances. You can import your own key in the AWS console under EC2-> Key Pairs -> Import Key Pair"
  type = string
}

