variable "environment" {
  description = "name of env"
  type        = string
  default     = "prod"
}

variable "server_text" {
  description = "text of http server"
  default     = "Demo Focused Modules"
  type        = string
}
