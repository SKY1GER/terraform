variable "image_id"{
  type= string #
  default = "ami-09c813fb71547fc4f"
  #if you dont give a value terraform will prompt
  description = "RHEL Devops -practice"
}

variable "instance_type"{
  type= string
  default = "t3.micro"
}

variable "instance_name"{
  default = "db"
}