terraform {
  backend "gcs" {
    bucket = "infobot-wat-terraform"
    prefix = "state/dev"
  }
}

module "dev" {
  source = "../main"

  project      = "infobot-wat"
  location     = "us"
  app_id       = "minh-delete-me-dev"
  display_name = "minh-delete-me-dev"
}
