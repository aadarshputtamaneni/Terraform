 
# ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "image_id" {
  type        = string #optional
  default     = "sg-054f0106648bd17d6" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


#r53 variables
variable "zone_id" {
    default = "Z05163661N6AOSLOBF3TO"
}

variable "domain_name" {
    default = "cloudwithaadarsh.site"
}
