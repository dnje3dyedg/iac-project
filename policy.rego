package terraform.security

deny[msg] {
  input.resource_type == "aws_instance"
  input.instance_type != "t2.micro"
  msg = "Only free-tier instance allowed"
}

deny[msg] {
  input.resource_type == "aws_db_instance"
  input.storage_encrypted != true
  msg = "RDS must have encryption enabled"
}