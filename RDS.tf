resource "aws_db_instance" "default" {
  allocated_storage = 20
  identifier = "lesson7_inst"
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "t2. micro"
  name = "lesson7"
  username = "root"
  password = "a1111"
  parameter_group_name = "default.mysql5.7"
}