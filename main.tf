terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "0.11.30"
    }
  }
}

provider "volterra" {
  api_p12_file = var.volt_api_p12_file
  url          = var.volt_api_url
  timeout      = "120s"
}