variable "environment" {
  description = "env name"
  type        = string
}

variable "ami" {
  description = "ami"
  type        = string
}

variable "instance_type" {
  description = "ec2 type"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "min size of asg"
  type        = number
}

variable "max_size" {
  description = "max size of asg"
  type        = number
}

variable "enable_autoscaling" {
  description = "eaable autoscaling"
  type        = bool
}

variable "server_text" {
  description = "Http static title"
  default     = "Demo Focused Modules"
  type        = string
}

variable "server_port" {
  description = "server port"
  type        = number
  default     = 8080
}

variable "custom_tags" {
  description = "tags needs for dynamic blocks"
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "vpc id"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "subnet id"
  type        = list(string)
  default     = null
}
