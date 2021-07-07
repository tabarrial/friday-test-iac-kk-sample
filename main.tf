module "ec2-test" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "ec2-test"
  instance_count         = 1
  ami                    = "ami-0a8e758f5e873d1c1"
  instance_type          = "t3.micro"
  key_name               = "friday-key"
  vpc_security_group_ids = ["sg-64402500"]
  subnet_id              = "subnet-f20044ab"

  tags = {
    Name     = "bastion-public"
}

}
