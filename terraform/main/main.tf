module "app" {
  source       = "./app"
  project      = var.project
  location     = var.location
  app_id       = var.app_id
  display_name = var.display_name
}

module "toolset_list_accounts" {
  source                              = "./toolsets/list_accounts"
  project                             = var.project
  location                            = var.location
  app_id                              = module.app.app_id
  list_accounts_client_secret_version = var.list_accounts_client_secret_version
  list_accounts_token_endpoint        = var.list_accounts_token_endpoint
}

module "guardrail_Default_Prompt_Guardrail" {
  source   = "./guardrails/Default_Prompt_Guardrail"
  project  = var.project
  location = var.location
  app_id   = module.app.app_id
}

module "guardrail_Default_Safety_Guardrail" {
  source   = "./guardrails/Default_Safety_Guardrail"
  project  = var.project
  location = var.location
  app_id   = module.app.app_id
}

module "agent_Root_agent" {
  source     = "./agents/Root_agent"
  project    = var.project
  location   = var.location
  app_id     = module.app.app_id
  depends_on = [module.toolset_list_accounts]
}

resource "google_ces_app_root_agent_association" "root_agent_assoc" {
  project  = var.project
  location = var.location
  app_id   = module.app.app_id
  agent_id = module.agent_Root_agent.agent_id
}

