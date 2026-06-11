resource "google_ces_app" "my_app" {
  project      = var.project
  app_id       = var.app_id
  location     = var.location
  display_name = var.display_name

  root_agent = "projects/${var.project}/locations/${var.location}/apps/${var.app_id}/agents/d716ad6f-3dc3-46f5-8f4b-f3430241e777"

  time_zone_settings {
    time_zone = "America/Los_Angeles"
  }

}

output "app_id" {
  value = google_ces_app.my_app.app_id
}
