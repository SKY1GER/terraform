variable "instance_names"{
    type = list
    default =["db","backend","frontend"]
}

variable "image_id"{
  type = string
  default = "ami-09c813fb71547fc4f"
  #if you dont give a value terraform will prompt
  description = "RHEL Devops -practice"
}
