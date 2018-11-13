provider "aws" {
  access_key = "AKIAIVVR2WQKY5J67JWA"
  secret_key = "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"
  region     = "eu-west-3"
}

module "consul" {
  source = "hashicorp/consul/aws"

  num_servers = "3"
}

output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}