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