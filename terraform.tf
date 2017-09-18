provider "aws" {}

module "consul" {
  source = "github.com/hashicorp/consul/terraform/aws"

  key_name = "ssh_key"
  key_path = "ssh_key.pem"
  region   = "eu-west-1"
  servers  = "2" 
}

output "output_address" {
  value   = "${module.consul.server_address}"
}