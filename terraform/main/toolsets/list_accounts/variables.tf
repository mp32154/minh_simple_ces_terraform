variable "project" {}
variable "location" {}
variable "app_id" {}
variable "list_accounts_client_secret_version" {
  default = "projects/infobot-wat/secrets/delete_me_invalid/versions/latest"
}
variable "list_accounts_token_endpoint" {
  default = "https://testserver.com/services/oauth2/token"
}
