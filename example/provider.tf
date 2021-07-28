provider "google" {
  region      = "us-east4"
  credentials = file("credentials.json")
}

provider "alkira" {
  portal   = var.alkira_portal
  username = var.alkira_username
  password = var.alkira_password
}