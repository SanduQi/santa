terraform {
  required_providers {
    zentral = {
      source = "zentralopensource/zentral"
    }
  }

 backend "http" {
  address        = "https://psumac24-alabama.zentral.cloud/api/terraform/backend/starter_kit/"
  lock_address   = "https://psumac24-alabama.zentral.cloud/api/terraform/backend/starter_kit/lock/"
  unlock_address = "https://psumac24-alabama.zentral.cloud/api/terraform/backend/starter_kit/lock/"
  lock_method    = "POST"
  unlock_method  = "DELETE"
  username       = "support@zentral.com"
  password       = "CY6n2WoSHHb36w5Mi9UmCtfkyJI10gZnQJNRwBregq5wndBn8G7euw6FQLAgrERs"
}
}

// configure the provider
provider "zentral" {
  // URL where the API endpoints are mounted in the Zentral deployment.
  // The ZTL_API_BASE_URL environment variable can be used instead.
  base_url = "https://${var.fqdn}/api/"

  // Zentral service account (better) or user API token.
  // This is a secret, it must be managed using a variable.
  // The ZTL_API_TOKEN environment variable can be used instead.
  token = var.api_token
}
