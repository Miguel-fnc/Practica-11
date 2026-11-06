variable "worker_name" {
  description = "worker name"
  type        = string
  sensitive   = true
  default     = null
}

variable "account_id" {
  description = "Cloudflare Account ID"
  type        = string
  sensitive   = true
  default     = null
}