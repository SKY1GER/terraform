resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    tags ={
        Name = "db"
    }
}



#resource <resource type>     <resourcename>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh access"
    #ingress(inbound rules)
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    #ingress(outbound rules)
    egress {
        from_port        = 0 #from 0 to 0 means opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {

        name = "allow_ssh"
        createdby = "SaiKumar"
    }
}
