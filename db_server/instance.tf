resource "aws_key_pair" "key_pair" {
  key_name   = "db_server_key"
  public_key = file("~/keys/db_server_key.pub")
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b7e671694d4feeb0"
  instance_type = "t2.large"
  key_name      = aws_key_pair.key_pair.key_name
  tags = {
    Name = "DB Server"
  }
}


