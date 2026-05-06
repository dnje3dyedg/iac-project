variable "subnet_ids" {}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "main-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Password123!"
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
  skip_final_snapshot  = true
}