resource "aws_instance" "jenkins_master" {
  ami           = "ami-0753e0e42b20e96e3"
  instance_type = "t2.micro"
  key_name = "vinod_2022"
  user_data = file("jenkins.sh")
  security_groups = ["Demo_All_ports"]
  tags = {
    Name = "jenkins_master"
  }
}