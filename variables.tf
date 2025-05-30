variable "aws_region" {
  default = "us-east-1"
}

variable "backend_bucket" {}
variable "dynamodb_table" {}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "image_url" {
  description = "Docker image for Medusa backend"
}

variable "container_port" {
  default = 9000
}
