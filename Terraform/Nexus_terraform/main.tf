resource "aws_instance" "nexus" {
  ami           = "ami-0753e0e42b20e96e3"
  instance_type = "t2.medium"
  key_name = "vinod_2022"
  user_data = file("nexus.sh")
  security_groups = ["Demo_All_ports"]
  tags = {
    Name = "nexus"
  }
}