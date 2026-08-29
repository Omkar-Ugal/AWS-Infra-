module "ec2" {
  source = "../../modules/compute/ec2"

  env            = "prod"
  instance_count = 3
  ami            = "ami-01a00762f46d584a1"
  instance_type  = "t2.micro"

  key_public_path = "/home/omkar/.ssh/id_ed25519.pub"

  common_tags = {
    Project     = "AWS-Infra"
    Environment = "prod"
  }
}

module "s3" {
  source = "../../modules/storage/s3"

  env = "prod"

  bucket_count = 1

  common_tags = {
    Project    = "AWS-Infra"
    Enviroment = "prod"
  }
}

module "DynamoDB" {
  source = "../../modules/storage/dynamodb"
  env    = "prod"

  table_count = 1

  common_tags = {
    Project    = "AWS-Infra"
    Enviroment = "prod"
  }
}