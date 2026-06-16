resource "google_ces_toolset" "list_accounts" {
  project      = var.project
  location     = var.location
  app          = var.app_id
  toolset_id   = "a7b32cbc-7bc1-407b-ab7d-fbbbd8c0a1c9"
  display_name = "list_accounts"
  open_api_toolset {
    api_authentication {
      oauth_config {
        client_id             = "dsafdsfadfsdf"
        client_secret_version = var.list_accounts_client_secret_version
        oauth_grant_type      = "CLIENT_CREDENTIAL"
        scopes                = ["adfasdfasdfadsfasdfasdf"]
        token_endpoint        = var.list_accounts_token_endpoint
      }
    }
    open_api_schema = file("${path.module}/open_api_toolset/open_api_schema.yaml")
  }
}
