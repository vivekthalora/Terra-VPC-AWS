module "TerraLab-vpc-ec2-sg" {
  source = "./modules/ec2-sg"
  region = "us-east-2"
  vpc-id = "${module.vpc.TerraLab-vpc}"
  ec2-sg-name = "ec2-sg"

  ###SECURITY INBOUND GROUP RULES###
  #RULE-1-INBOUND-RULES
  rule-1-from-port= 80
  rule-1-protocol = "tcp"
  rule-1-to-port = 80
  rule-1-cidr_blocks = "0.0.0.0/0"

  #RULE-2-INBOUND-RULES

  rule-2-from-port = 443
  rule-2-protocol = "tcp"
  rule-2-to-port = 443
  rule-2-cidr_blocks = "0.0.0.0/0"

  #RULE-3-INBOUND-RULES
  rule-3-from-port = 22
  rule-3-protocol = "tcp"
  rule-3-to-port = 22
  rule-3-cidr_blocks = "0.0.0.0/0"

  ###SECURITY GROUP OUTBOUND RULES###
  #RULE-1-OUTBOUND-RULES
  outbound-rule-1-from-port = 0
  outbound-rule-1-protocol = "-1"
  outbound-rule-1-to-port = 0
  outbound-rule-1-cidr_blocks = "0.0.0.0/0"

  #NOTE: ONLY ALL PORTS WILL BE "" & CIDR BLOCK WILL IN COMMAS ""
}  