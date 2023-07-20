variable "ami" {
  type        = string
  description = "AMI ID required for EC2 creation"
}
variable "instance_type" {
  type        = string
  description = "Instance Type"
}
variable "key_name" {
  type        = string
  default     = "my_key"
  description = "name of the key to access the instance."
}
variable "tags" {
  type        = map(string)
  description = "Instance Tags"
}
variable "instance_profile_role" {
  type        = string
  default     = ""
  description = "Instance profile name, if any"
}
variable "sec_group_id" {
  type        = list(string)
  description = "SG list"
}
variable "subnet_id" {
  type        = string
  description = "subnet id."
}
variable "monitoring" {
  type        = bool
  description = "Advanced monitoring"
}
variable "delete_root_ebs" {
  type        = string
  default     = true
  description = "if root ebs is destroyed or not"
}
variable "root_ebs_size" {
  type        = number
  description = "root ebs size"
}
variable "root_ebs_type" {
  type        = string
  default     = "gp3"
  description = "ebs type"
}
variable "auto_recovery" {
  type        = string
  default     = "default"
  description = "this tells the instance to restart if aws check fails (disabled or default"
}
variable "source_dest" {
  type        = bool
  default     = false
  description = "if set to true instance can be used as gateway"
}
