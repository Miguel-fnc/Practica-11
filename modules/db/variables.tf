variable "account_id" {
  description = "Cloudflare Account ID"
  type        = string
  sensitive   = true
  default     = null
}

variable "d1_database_name" {
  description = "D1 database name"
  type        = string
  sensitive   = true
  default     = null
}

variable "api_token" {
  description = "Cloudflare API token withworkers and D1 permission"
  type        = string
  sensitive   = true
  default     = null
}