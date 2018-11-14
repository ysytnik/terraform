provider "aws" {
  access_key = "hacker2vyebannyj4vzhopu"
  secret_key = "goviyazhayagolovaOvtseyob"
  region     = "eu-west-3"
}

module "consul" {
  source = "hashicorp/consul/aws"

  num_servers = "3"
}

output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}