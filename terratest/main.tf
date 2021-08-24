provider "aws" {
  region = "ap-south-1"
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  token = "${var.aws_session_token}"
}

resource "aws_vpc" "terra_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
    Name = "TerraVPC"
  }
}



resource "aws_internet_gateway" "terra_igw" {
  vpc_id = "${aws_vpc.terra_vpc.id}"
  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "public" {
  count = "${length(var.public_subnet_cidr)}"
  vpc_id = "${aws_vpc.terra_vpc.id}"
  cidr_block = "${element(var.public_subnet_cidr,count.index)}"
  availability_zone = "${element(var.azs,count.index)}"
  tags = {
    Name = "Subnet-${count.index+1}"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.terra_vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.terra_igw.id}"
  }
  tags = {
    Name = "publicRouteTable"
  }
}

resource "aws_route_table_association" "a" {
  count = "${length(var.public_subnet_cidr)}"
  subnet_id      = "${element(aws_subnet.public.*.id,count.index)}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_security_group" "default" {
  name        = "harish-security-group"
  description = "Security group for backend servers and private ELBs"
  vpc_id = "${aws_vpc.terra_vpc.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "example" {
  ami           = "ami-007d5db58754fa284"
   count = "${length(var.public_subnet_cidr)}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id   = "${element(aws_subnet.public.*.id,count.index)}"
  key_name = "harishnarang"
  vpc_security_group_ids = [ "${aws_security_group.default.id}" ]
  user_data = <<-EOF
            #!/bin/bash
            sudo apt-get -y update
            sudo apt-get -y install nginx
            EOF
    tags = {
    Name = "Instance-${count.index+1}"
  }
}
#resource "aws_instance" "import_example" {
#    ami = "ami-0927ed83617754711"
#    instance_type = "t2.micro"
#    key_name = "harry"

#}

#resource "aws_instance" "example3" {
#  ami           = "ami-007d5db58754fa284"
#  instance_type = "t2.micro"
#  associate_public_ip_address = "true"
#  subnet_id   = "subnet-03a153b3e4cfafbdc"
#  key_name = "harry"
#  vpc_security_group_ids = [ "${aws_security_group.default.id}" ]
#  user_data = <<-EOF
#            #!/bin/bash
#            sudo apt-get -y update
#            sudo apt-get -y install nginx
#            EOF
#    tags = {
#    Name = "harish"
#  }
#}

