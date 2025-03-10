resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    tags = merge( var.common_tags, {
        Name =  var.instance_names[count.index]
        Module = var.instance_names[count.index]
    })
    #left side arguments and right side values
}



#resource <resource type>     <resourcename>
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.description
    #ingress(inbound rules) this is called as block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
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
