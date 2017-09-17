provider "aws" {}

module "consul" {
  source = "github.com/hashicorp/consul/terraform/aws"

  key_name = "consul"
  key_path = "consul.pem"
  region   = "eu-west-1"
  servers  = "3" 
}