resource "google_ces_app" "my_app" {
  project      = var.project
  app_id       = var.app_id
  location     = var.location
  display_name = var.display_name

  time_zone_settings {
    time_zone = "America/Los_Angeles"
  }

  lifecycle {
    ignore_changes = [
      root_agent,
    ]
  }

}

output "app_id" {
  value = google_ces_app.my_app.app_id
}
