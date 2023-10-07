provider "aws" {
    region = "eu-west-2"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0eb260c4d5475b901"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-033d584dfa11e3ec9"
    key_name = "server"

    tags = {
    Name = "Web_server"
    }
}
    
/*
resource "aws_instance" "server" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "t3.micro"
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost"
  tenancy                 = "host"
}


resource "aws_key_pair" "server" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
*/