variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMI" {
  type = map
  default = {
      us-west-2 = "ami-03d5c68bab01f3496"
      eu-west-1 = "ami-0a8e758f5e873d1c1"
  }
}