terraform {
  required_version = ">= 1.0"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = ">= 1.52.0"
    }
  }

  /**
  backend "s3" {
    bucket = "tfstate-foo-bar-state"
    region = "eu-west-1"
    key    = "hcloud-k8s/kubernetes/hcloud/terraform.tfstate"
  }
  */
}
