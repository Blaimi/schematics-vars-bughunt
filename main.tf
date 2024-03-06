terraform {
  required_version = ">= 1.5.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.62.0"
    }
  }
}

locals {
  ibm_region = "eu-de"
}

provider ibm {
  region = local.ibm_region
}

data ibm_resource_group resource_group {
  name = var.resource_group_name
}
