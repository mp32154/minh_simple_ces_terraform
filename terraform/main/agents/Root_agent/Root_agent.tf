resource "google_ces_agent" "Root_agent" {
  project      = var.project
  location     = var.location
  app          = var.app_id
  agent_id     = "d716ad6f-3dc3-46f5-8f4b-f3430241e777"
  display_name = "Root agent"
  instruction  = file("${path.module}/instruction.txt")
  tools        = ["projects/${var.project}/locations/${var.location}/apps/${var.app_id}/tools/end_session"]
  toolsets {
    tool_ids = ["listAccounts"]
    toolset  = "projects/${var.project}/locations/${var.location}/apps/${var.app_id}/toolsets/a7b32cbc-7bc1-407b-ab7d-fbbbd8c0a1c9"
  }
}

output "agent_id" {
  value = google_ces_agent.Root_agent.agent_id
}
