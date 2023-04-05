provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"
  subnet_id     = "-0b554a8a3c7cc2775"
  tags = {
    "Name" = "Terraform-demo"
    "env"  = "dev"
    
  }


}




