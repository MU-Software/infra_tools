terraform {
  required_version = "1.8.3"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
  cloud {}
}

provider "cloudflare" {}
