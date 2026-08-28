variable "env" {
	description = "Enviroment name (from terraform.workspace)"
	type 	    = string
}

variable "instance_count" {
	description = "Number of ec2 instance to create"
	type 	    = number
}

variable "ami" {
	description = "ami id for ec2 instances"
	type 	    = string
}

variable "instance_type" {
	description = "ec2 instance type"
	type 	    = string
}

variable "key_public_path" {
	description = "path to the SSh public key file"
	type 	    = string
}

variable "common_tags" {
	description = "common tags applied to all resources"
	type 	    = map(string)
	default	    = {}
}
