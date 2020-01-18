resource "aws_key_pair" "key_pair" {
  key_name   = "app_server_key"
  public_key = file("~/keys/app_server_key.pub")
}

resource "aws_instance" "app_server" {
  ami           = "ami-0275c66a9dce7dd1e"
  instance_type = "t2.large"
  key_name      = aws_key_pair.key_pair.key_name
  tags = {
    Name = "App Server"
  }
}


