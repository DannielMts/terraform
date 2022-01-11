/*variable "environment" {
  type        = string
  description = "Digite 'dev' ou 'prod'"
  validation {
    condition     = var.environment == "dev" || var.environment == "prod"
    error_message = "Digite dev ou prod."
  }
}
*/
variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })
  description = ""
  default = {
    dev  = 2
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })
  description = ""
  default = {
    dev  = "e2-micro"
    prod = "e2-small"
  }
}

variable "instance_zone" {
  type = object({
    dev  = string
    prod = string
  })
  description = ""
  default = {
    dev  = "us-central1-c"
    prod = "us-east1-b"
  }
}

variable "criador" {
  type        = string
  description = ""
  default     = "danniel-martins"
}
