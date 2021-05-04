module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"
  name                   = "lesson7"
  instance_count         = 5
  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "kibr1371"
  monitoring             = true
  vpc_security_group_ids = ["sg-11111111"]
  subnet_id              = "subnet-eddcdzz4"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}