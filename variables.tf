variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefix for project resources"
  type        = string
  default     = "terraform_devops_project"
}

