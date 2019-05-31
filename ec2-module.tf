module "ec2-app-v1" {
  source = "./modules/ec2"
  region = "us-east-2"
  key-name = "learn-terraform"
  ami-id = "ami-03a199c8ef85f8f23"
  instance-type = "t2.micro"
  number-of-ec2-instances-required = "2"
  public-key-file-name = "${file("./modules/ec2/learn-terraform.pub")}"

  instance-name-taq = "Lamp-VM"
  associate-public-ip-address = "true"

  vpc-security-group-ids = "${module.TerraLab-vpc-ec2-sg.ec2-sg.id}"
  ec2-subnets-ids = ["${module.vpc.public-subnet-ids}"]
}  