resource "google_ces_guardrail" "Default_Prompt_Guardrail" {
  project      = var.project
  location     = var.location
  app          = var.app_id
  guardrail_id = "a4924e08-f54f-477b-8e36-b9eca1fbcfc2"
  display_name = "Default Prompt Guardrail"
  enabled      = true
  action {
    generative_answer {
      prompt = "Respond politely that you cannot assist with this request."
    }
  }
  llm_prompt_security {
  }
}
