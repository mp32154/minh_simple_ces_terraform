terraform {
  backend "gcs" {
    bucket = "infobot-wat-terraform"
    prefix = "state/prod"
  }
}

module "prod" {
  source = "../main"

  project      = "prod-project-id"
  location     = "us"
  app_id       = "prod-app-id-todo"
  display_name = "minh simple open api prod"
}
