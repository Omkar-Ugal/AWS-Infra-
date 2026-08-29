variable "env" {
  description = "Enviroment name (from terraform.workspace)"
  type        = string
}

variable "bucket_count" {
  description = "Number of s3 buckets to create"
  type        = number
}

variable "common_tags" {
  description = "common tags applied to all resources"
  type        = map(string)
  default     = {}
}