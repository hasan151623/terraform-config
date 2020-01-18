resource "aws_key_pair" "key_pair" {
  key_name   = "web_server_key"
  public_key = file("~/keys/web_server_key.pub")
}

resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key_pair.key_name
  tags = {
    Name = "Web Server"
  }
}


