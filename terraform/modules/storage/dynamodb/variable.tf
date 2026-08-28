variable "env" {
  description = "Enviroment name (from terraform.workspaces)"
  type        = string
}

variable "table_count" {
  description = "Number of DynamoDB tables to create"
  type        = number
}

variable "common_tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {}
}