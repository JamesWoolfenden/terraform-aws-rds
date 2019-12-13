variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "subnet_ids" {
  type = list
}

variable "instance" {
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

variable "db_subnet_group_name" {
  default     = "default"
  type        = string
  description = "The name of the subnet to use for the database"
}

variable "rds_role" {
  description = "The IAM ARN of the role for RDS monitoring"
  type        = string
  default     = ""
}

variable "kms_key_id" {
  description = "The ARN of the KMS key"
  default     = ""
}
