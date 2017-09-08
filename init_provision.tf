provider "aws" {
  access_key = "xxxxxxxxxx"
  secret_key = "xxxxxx"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-26939c30"
  instance_type = "t2.micro"
  key_name = "xxxxxx"
  vpc_security_group_ids = ["sg-xxxxxx"] 
  subnet_id = "subnet-xxxxxxx"
  
}
