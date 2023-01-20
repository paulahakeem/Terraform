
variable "vpc-cidr" {
  type = string
}

variable "subnet-cidr" {
  type = list(any)
}

variable "subnet-names" {
  type = list(any)
}