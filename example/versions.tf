terraform {
  required_version = ">= 0.12.29"

  required_providers {

    alkira = {
      source  = "alkiranet/alkira"
      version = ">= 0.6.3"
    }

    google = {
      source  = "hashicorp/google"
      version = "<4.0,>= 2.12"
    }

  }
}