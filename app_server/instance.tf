resource "aws_key_pair" "key_pair" {
  key_name   = "app_server_key"
  public_key = file("~/keys/app_server_key.pub")
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ae670f4a34384ce1"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key_pair.key_name
  tags = {
    Name = "App Server"
  }
}


