terraform {
  required_providers {
    netlify = {
      source = "AegirHealth/netlify"
      version = "0.6.12"
    }
  }
}

provider "netlify" {}