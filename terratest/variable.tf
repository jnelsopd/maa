variable "vpc_cidr" {
#default = "192.168.0.0/16"
type=string
}

variable "public_subnet_cidr" {
#default = "192.168.1.0/24"
type=list
}

variable "private_subnet_cidr" {
#default = "192.168.1.0/24"
type=string
}

variable "azs" {
        type = "list"
#        default = ["ap-south-1a", "ap-south-1b"]
}


variable "aws_profile" {
type = string

}

variable "aws_access_key_id"  {
type = string

}
variable "aws_secret_access_key"  {
type = string

}

variable "aws_session_token"  {
type = string

}

