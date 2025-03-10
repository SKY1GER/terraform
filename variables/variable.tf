#first preference is terraform commandline variables
#second preference is .tfvars
#thirdpreference is Env variable(export TF_VAR_instance_type="t3.micr")
#4 variable default value


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

variable "tags"{
  default = {
    project = "Expense"
    Environment = "Dev"
    Module = "db"
    Name = "db"
  }
}

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