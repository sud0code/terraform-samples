module "ec2_instance" {
  
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "<>"
  instance_type          = "<>"
  key_name               = "<>"
  monitoring             = true
  vpc_security_group_ids = ["<>"]
  subnet_id              = "<>"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
