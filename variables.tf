variable "environment" {
  type        = string
  description = "Digite 'dev' ou 'prod'"
  validation {
    condition     = var.environment == "dev" || var.environment == "prod"
    error_message = "Digite dev ou prod."
  }
}

variable "gcp_region" {
  type        = string
  description = ""
  default     = "us-east1"
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })
  description = ""
  default = {
    dev  = 1
    prod = 2
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

variable "instance_labels" {
  type        = map(string)
  description = ""
  default = {
    projeto = "projeto-final"
  }
}

variable "criador" {
  type        = string
  description = ""
  default     = "danniel-martins"
}
