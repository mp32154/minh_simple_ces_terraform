module "prod" {
  source = "../main"

  project      = "prod-project-id"
  location     = "us"
  app_id       = "prod-app-id-todo"
  display_name = "minh-delete-me-dev prod"
}
