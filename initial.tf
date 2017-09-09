provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["sg-29ce644f"] 
  subnet_id = "subnet-bf4e4ce6"
  
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

output "example" {
  value = "${aws_instance.example.id}"
}
output "ip" {
  value = "${aws_eip.ip.public_ip}"
}
