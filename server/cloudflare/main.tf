terraform {
  required_version = "1.8.4"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
  cloud {}
}

variable "cloudflare_account_id" { type = string }
variable "cloudflare_email_address" { type = string }
variable "mudev_aws_1_instance_ipv4" { type = string }
variable "mudev_vultr_1_instance_ipv4" { type = string }

module "domains" {
  source = "./domains"

  cloudflare_account_id       = var.cloudflare_account_id
  mudev_aws_1_instance_ipv4   = var.mudev_aws_1_instance_ipv4
  mudev_vultr_1_instance_ipv4 = var.mudev_vultr_1_instance_ipv4
}
