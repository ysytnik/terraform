terraform {
  backend "consul" {
    address = "demo.consul.io"
    path    = "getting-started-ysyter"
    lock    = false
    scheme  = "https"
  }
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"

}
resource "aws_instance" "test" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "t2.micro"


  provisioner "local-exec" {
    command = "echo ${aws_instance.test.public_ip} > ip_address.txt"
  }

}
resource "aws_eip" "ip" {
  instance = "${aws_instance.test.id}"
}
output "ip" {
  value = "${aws_eip.ip.public_ip}"
}

output "ami" {
value = "${lookup(var.amis, var.region)}"}