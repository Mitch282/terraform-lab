resource "aws_instance" "demo1" {
  ami                    = var.ami-type
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.sg1.id]
  subnet_id              = "subnet-0b554a8a3c7cc2775"
  key_name               = "Linux-105-key"
  user_data              = file("${path.module}/postgresql.sh")
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "Team" = var.team
  }
}

