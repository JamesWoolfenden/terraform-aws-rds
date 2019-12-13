variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "instance" {
  description = "The DB instance details"
  type        = map
}

variable "subnet_group" {
  description = "List of Subnets and names prefix"
}
