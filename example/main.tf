module "gcp-vpc" {
  source = "alkiranet/gcp-vpc/alkira"

  // GCP values
  project_id      = "my-project-id"
  gcp_region      = "us-east4"
  vpc_name        = "vpc-gcp-east"
  subnet_names    = ["subnet-01", "subnet-02"]
  subnet_prefixes = ["10.3.1.0/24", "10.3.2.0/24"]

  // Alkira values
  credential  = "gcp-credential"
  segment     = "corporate"
  group       = "production"
  cxp_region  = "US-EAST-2"
  billing_tag = "line-of-business"
}