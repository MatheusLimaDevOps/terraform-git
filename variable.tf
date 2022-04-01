variable "login_aws" {
    
  default = {
  access_key        = "PUT YOUR ACESS_KEY"
  secret_key        = "PUT YOUR SECRET_KEY"
  }
  }
variable "amis" {
  type = map
  default = {
    "ubuntu_x86"    = "PUT AMI IN YOUR REGION"
    "ubuntu_arm"    = "PUT AMI IN YOUR REGION"
    "aws_Linux_x86" = "PUT AMI IN YOUR REGION"
    "aws_Linux_arm" = "PUT AMI IN YOUR REGION"
  } 
  }
variable "login_rds" {
  default = {
  username           = "PUT YOUR USERNAME"
  password           = "PUT YOUR PASSWORD"
 }
 }