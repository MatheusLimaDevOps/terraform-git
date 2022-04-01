provider "aws" {
  region = "PUT YOUR REGION"
  access_key = "${var.login_aws.access_key}"
  secret_key = "${var.login_aws.secret_key}"
  }
resource "aws_instance" "PUT YOUR NAME" {
  ami = "${var.amis.ubuntu_arm}"
  instance_type = "t4g.small"
  key_name = "PUT YOUR NAME"
root_block_device {
  volume_type = "gp2"
  volume_size = 30
  delete_on_termination = true
  }
  user_data = <<EOF
  #i/bin/bash
  sudo apt update
  sudo apt upgrade
  sudo apt-get install python3
  sudo apt update
  sudo apt-get install python3-pip
EOF
  tags = {
  "Name" = "PUT YOUR NAME"
  }
  vpc_security_group_ids = [ "${aws_security_group.acesso-ssh.id}" ]
  }
resource "aws_instance" "PUT YOUR NAME" {
  ami = "${var.amis.ubuntu_arm}"
  instance_type = "t4g.small"
  key_name = "PUT YOUR NAME"
root_block_device {
  volume_type = "gp2"
  volume_size = 30
  delete_on_termination = true
  }
  user_data = <<EOF
  #i/bin/bash
  sudo apt update
  sudo apt upgrade
EOF
  tags = {
  "Name" = "PUT YOUR NAME"
  }
  vpc_security_group_ids = [ "${aws_security_group.acesso-ssh.id}" ]
  }
resource "aws_instance" "PUT YOUR NAME" {
  ami = "${var.amis.ubuntu_arm}"
  instance_type = "t4g.large"
  key_name = "PUT YOUR NAME"
root_block_device {
  volume_type = "gp2"
  volume_size = 30
  delete_on_termination = true
  }
  user_data = <<EOF
  #i/bin/bash
  sudo apt update
  sudo apt upgrade
EOF
  tags = {
  "Name" = "PUT YOUR NAME"
  }
  vpc_security_group_ids = [ "${aws_security_group.acesso-ssh.id}" ]
  }
  resource "aws_s3_bucket" "PUT YOUR NAME" {
  bucket = "PUT YOUR NAME"

  tags = {
    Name        = "PUT YOUR NAME"
    Environment = "PUT YOUR NAME"
  }
}
resource "aws_s3_bucket_acl" "PUT YOUR NAME" {
  bucket = aws_s3_bucket.PUTYOURNAME.id
  acl    = "private"
}
resource "aws_db_instance" "PUT YOUR NAME" {
  allocated_storage    = 10
  max_allocated_storage = 100
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "PUT YOUR NAME"
  username             = "${var.login_rds.username}"
  password             = "${var.login_rds.password}"
  identifier           = "PUT YOUR NAME" 
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  multi_az = true
}