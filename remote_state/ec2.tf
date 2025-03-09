resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0b7f39fbd8d4c35d9"]
    instance_type = "t3.micro"
    tags ={
        Name = "db"
    }
}
