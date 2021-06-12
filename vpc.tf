resource "aws_vpc" "prod_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = "true" #gives you an internal domain name
  enable_dns_hostnames = "true" #gives you an internal host name
  enable_classiclink = "false"
  instance_tenancy = "default"
  tags = {
      Name = "prod_vpc"
  }
}
resource "aws_subnet" "prod-subnet-public-1" {
  vpc_id = "${aws_vpc.prod_vpc.id}"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-west-2a"
  tags = {
      Name = "prod-subnet-public-1"
  }
}
