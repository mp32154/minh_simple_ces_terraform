resource "google_ces_guardrail" "Default_Safety_Guardrail" {
  project      = var.project
  location     = var.location
  app          = var.app_id
  guardrail_id = "e07e70e5-699a-414e-aec1-e9fa8b5d4d5c"
  display_name = "Default Safety Guardrail"
  enabled      = true
  action {
    generative_answer {
      prompt = "Respond politely that you cannot assist with this request due to safety policies."
    }
  }
  model_safety {
    safety_settings {
      category  = "HARM_CATEGORY_HATE_SPEECH"
      threshold = "BLOCK_MEDIUM_AND_ABOVE"
    }
    safety_settings {
      category  = "HARM_CATEGORY_DANGEROUS_CONTENT"
      threshold = "BLOCK_MEDIUM_AND_ABOVE"
    }
    safety_settings {
      category  = "HARM_CATEGORY_SEXUALLY_EXPLICIT"
      threshold = "BLOCK_MEDIUM_AND_ABOVE"
    }
    safety_settings {
      category  = "HARM_CATEGORY_HARASSMENT"
      threshold = "BLOCK_MEDIUM_AND_ABOVE"
    }
  }
}
