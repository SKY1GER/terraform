#first preference is terraform commandline variables
#second preference is .tfvars
#thirdpreference is Env variable(export TF_VAR_instance_type="t3.micr")
#4 variable default value

# ***instance variables***
variable  "instance_names"{
  default = ["db","backend","frontend"]
}

variable "image_id"{
  type= string #
  default = "ami-09c813fb71547fc4f"
  #if you dont give a value terraform will prompt
  description = "RHEL Devops -practice"
}

variable "instance"{
  type= string
  default = "t3.micro"
}

variable "common_tags"{
  default = {
    project = "expense"
    Environment = "Dev"
    terraform = "true"
  }
}

# ***sg variables***

variable "sg_name"{
    default = "allow_ssh"
}

variable "description"{
    default = "allowing ssh access"
}


variable "protocol"{
    default = "tcp"
}


variable "ssh_port"{
    default = 22
}

variable "allowed_cidr"{
    default = ["0.0.0.0/0"]
}

# ***route53 variables

variable "zone_id"{
  default = "Z014219415ZOFWJY17BGO"
}

variable "domain_name"{
  default = "daws79s.online"
}