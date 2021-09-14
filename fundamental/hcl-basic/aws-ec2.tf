resource "aws_instance" "webserver" {
  ami = "ami-xxxxx"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "data" {
  bucket = "webserver-bucket-org-007"
  acl = "private"
}
