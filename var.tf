variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_id" {
  default = "vpc-08404e8bfdd9a4ba9"
}

variable "subnet_id" {
  default = "subnet-07738ebbf170bd7d5"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  description = "number of instances"
  type        = number
  default     = 1
}

variable "key_name" {
  default = "ssh-key"
}