terraform {
  backend "gcs" {
    bucket = "infobot-wat-terraform"
    prefix = "state/prod"
  }
}

module "prod" {
  source = "../main"

  project      = "infobot-wat"
  location     = "us"
  app_id       = "prod-app-id-todo"
  display_name = "minh simple open api prod"
}

# Triggering gated run test
