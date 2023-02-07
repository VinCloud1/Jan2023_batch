resource "aws_instance" "web" {
  ami           = "ami-0753e0e42b20e96e3"
  instance_type = "t3.micro"
  key_name = "vinod_2022"

  tags = {
    Name = "HelloWorld_2023"
  }
}