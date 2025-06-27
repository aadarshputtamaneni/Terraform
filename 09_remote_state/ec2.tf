resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}