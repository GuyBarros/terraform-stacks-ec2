variable "availability_zones" {
  description = "List of availability zones in the region"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

