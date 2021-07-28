// Define GCP credential
data "alkira_credential" "credential" {
  name = var.credential
}

// Define Alkira segment
data "alkira_segment" "segment" {
  name = var.segment
}

// Define Alkira group
data "alkira_group" "group" {
  name = var.group
}

// Define Alkira billing tag
data "alkira_billing_tag" "tag" {
  name = var.billing_tag
}

// Create GCP VPC
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  project                 = var.project_id
  routing_mode            = var.routing_mode
  auto_create_subnetworks = false
}

// Create subnets from list
resource "google_compute_subnetwork" "subnet" {
  project                  = var.project_id
  count                    = length(var.subnet_names)
  name                     = var.subnet_names[count.index]
  ip_cidr_range            = var.subnet_prefixes[count.index]
  network                  = google_compute_network.vpc.id
  private_ip_google_access = true
}

// Connect VPC through Alkira CXP
resource "alkira_connector_gcp_vpc" "connector" {

  // GCP specific
  name         = var.vpc_name
  gcp_vpc_name = var.vpc_name
  gcp_region   = var.gcp_region
  gcp_vpc_id   = google_compute_network.vpc.id

  // Alkira specific
  cxp           = var.cxp_region
  size          = var.connector_size
  group         = data.alkira_group.group.name
  segment       = data.alkira_segment.segment.name
  billing_tags  = [data.alkira_billing_tag.tag.id]
  credential_id = data.alkira_credential.credential.id
}
