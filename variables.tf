variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI"

  type = object ({
    name  = string
    owner = string
  })

  default = {
    name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
}

variable "environment" {
  description = "Development environment name and CIDR prefix"

  type = object ({
    env           = string
    subnet_prefix = string
  })

  default = {
    env           = "dev"
    subnet_prefix = "10.0"
  }
}

variable "asg_size" {
  description = "ASG min/max size"

  type = object ({
    min = string
    max = string
  })

  default = {
    min = 1
    max = 1
  }
}