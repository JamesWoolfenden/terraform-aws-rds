
variable "subnet_ids" {
  description = "A list of Subnet ids"
  type        = list(any)
}

variable "instance" {
  description = "Map of all the variables"
}

variable "subnet_group" {
  default = [
    {
      name        = "database-1"
      description = ""
  }]
}

variable "instance_password" {
  type        = string
  description = "Instance Password"
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

variable "publicly_accessible" {
  type        = bool
  description = "To comply with security rules CKV_AWS_17 this defaults to false"
  default     = false
}

variable "family" {
  type        = string
  default     = "aurora-postgresql14"
  description = "Needs to be set to your specific db"
}

variable "description" {
  type    = string
  default = "Some description"
}

variable "monitoring_role_arn" {
  type        = string
  description = "Role for Monitoring - the ARN"
  default     = ""
}

variable "monitoring_interval" {
  type        = number
  default     = 60
  description = "Monitoring_interval in seconds"
}

variable "custom_db_group_name" {
  type        = string
  description = "Your custom DB parameter group mane"
  default     = ""
}

variable "kms_key_arn" {
  type        = string
  description = "The ARN of a KMS key"
}

variable "multi_az" {
  type        = bool
  default     = true
  description = "Controls multi az"
}

variable "recovery_window_in_days" {
  type        = number
  default     = 0
  description = "The number of days for schedule of deletion of secret"
}

variable "vpc_id" {
  type        = string
  description = "The id of the VPC for the security group and db"
}

variable "allowed_cidr" {
  type = string
}
