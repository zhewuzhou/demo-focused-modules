# everything is in vpc/subnet, used default vpc/subnet
variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}

variable "alb_name" {
  description = "The name to use for this ALB"
  type        = string
}
