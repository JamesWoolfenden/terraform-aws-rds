variable "instance" {
  description = "The DB instance details"
}
variable "subnet_group" {
  description = "List of Subnets and names prefix"
}
variable "custom_db_group_name" {
  type        = string
  description = "Your custom DB parameter group mane"
}
