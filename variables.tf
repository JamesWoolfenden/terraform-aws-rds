variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "subnet_ids" {
  type = list
}

variable "instance" {
  type = map
}

variable "subnet_group" {
  default = [
    {
      name_prefix = "jgw"
      description = ""
  }]
}

variable "instance_password" {

}
