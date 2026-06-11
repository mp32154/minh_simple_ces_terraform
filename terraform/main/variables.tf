variable "project" { type = string }
variable "location" { type = string }
variable "app_id" { type = string }
variable "display_name" { type = string }
variable "list_accounts_client_secret_version" {
  type    = string
  default = "projects/infobot-wat/secrets/delete_me_invalid/versions/latest"
}
variable "list_accounts_token_endpoint" {
  type    = string
  default = "https://testserver.com/services/oauth2/token"
}
