resorce "aws_instance"{
    count = 3
    ami =
    vpc_security_group_ids = [aws_security_group.allowssh.id]
    type =
    tags{
        Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allowssh"{

    name = "allow_ssh"
    description = "allowing ssh"
    ingress{
        from_port = 22
        to_port = 22
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol ="-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
       tags = {

    name = "allow_ssh"
        createdby = "SaiKumar"
    }   
}