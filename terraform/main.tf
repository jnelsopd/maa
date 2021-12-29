provider "aws" {
 region = "ap-south-1"
 access_key = "AKIAYGCIFWPGOFUI2J7M"
 secret_key = "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"
}

data "aws_availability_zones" "available" {}

resource "aws_vpc" "default" {
    cidr_block = "192.168.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = "VPC-jenkins"
    }
}

resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.default.id}"
    tags = {
        Name = "Internet-Gateway-new"
    }
}

resource "aws_subnet" "PublicSubnetA" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "192.168.1.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  tags = {
        Name = "Public-Subnet-A"
  }
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.default.id}"
  tags = {
      Name = "Public-Route-new "
  }
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }
}
resource "aws_route_table_association" "PublicSubnetA" {
    subnet_id = "${aws_subnet.PublicSubnetA.id}"
    route_table_id = "${aws_route_table.public.id}"
}


