module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = " ~> 3.0"

  name = "single-instance"

  ami                    = "<ami-id>"
  instance_type          = "<instance-type>"
  key_name               = "<user>"
  monitoring             = <true/false>
  vpc_security_group_ids = ["<sg-id>"]
  subnet_id              = "<subnet-id>"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
