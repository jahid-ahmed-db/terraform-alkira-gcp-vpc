## Alkira - GCP VPC Connector Module
This module makes it easy to provision a VPC in [GCP](https://cloud.google.com/) and connects it through [Alkira.](https://alkira.com)

### What It Does
- Provision a [Virtual Private Cloud (VPC)](https://cloud.google.com/vpc)
- Build one or more [subnets](https://cloud.google.com/vpc/docs/using-vpc#subnet-rules) (provided as a list)
- Provision a [GCP Connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_gcp_vpc) and associate the newly created VPC
- Apply an existing [billing tag](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/billing_tag) to the corresponding network resources
- Place resources in an existing [segment](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/segment) and [group](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/group)

### Requirements
- [Terraform](https://www.terraform.io/downloads.html) **>= 0.12**
- [GCP Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs) **<4.0,>= 2.12"**
- [Alkira Provider](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs) **>= 0.6.2**

## Example Usage
module "gcp-vpc" {
```hcl
  source = "alkiranet/gcp-vpc/alkira"

  // GCP values
  project_id      = "my-project-id"
  gcp_region      = "us-east4"
  vpc_name        = "vpc-gcp-east"
  subnet_names    = ["subnet-01", "subnet-02"]
  subnet_prefixes = ["10.3.1.0/24", "10.3.2.0/24"]

  // Alkira values
  billing_tag     = "line-of-business"
  credential      = "gcp-credential"
  segment         = "corporate"
  group           = "production"
  cxp_region      = "US-EAST-2"
}
```