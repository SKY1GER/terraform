locals{
    ami_id = "ami-09c813fb71547fc4f"
    security_group_id   = "sg-0b7f39fbd8d4c35d9"
    instance_type = var.instance == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals"
    }
}