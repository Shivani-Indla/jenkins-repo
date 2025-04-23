module "jenkins" {
  source = "terraform-aws-modules/ec2-instance/aws"
  
    name  = "jenkins"
    ami   = "ami-0e449927258d45bc4"
    instance_type = "t2.micro"
    key_name      = "SRK-Key"
    subnet_id     = "subnet-0da5d1190995a43ed"
    vpc_security_group_ids = ["sg-093350e2375367437"]
    associate_public_ip_address = true
    tags = {
      Name = "TF-Master"
    }
    user_data = file("user_data_master.sh")
}

module "jebkins-agent" {
  source = "terraform-aws-modules/ec2-instance/aws"

    name  = "jenkins-agent"
    ami   = "ami-0e449927258d45bc4"
    instance_type = "t2.micro"
    key_name      = "SRK-Key"
    subnet_id     = "subnet-0da5d1190995a43ed"
    vpc_security_group_ids = ["sg-093350e2375367437"]
    associate_public_ip_address = true
    tags = {
      Name = "TF-Agent"
    }
    user_data = file("user_data_agent.sh")
}