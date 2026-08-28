module "ec2" {
  source = "../../modules/compute/ec2"

  env            = "dev"
  instance_count = 1
  ami            = "YOUR_AMI_ID"
  instance_type  = "t2.micro"

  key_public_path = "/home/omkar/.ssh/id_ed25519.pub"

  common_tags = {
    Project = "AWS-Infra"
    Environment = "dev"
  }
}
