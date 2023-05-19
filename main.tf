resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-jesse2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_instance" "web" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}