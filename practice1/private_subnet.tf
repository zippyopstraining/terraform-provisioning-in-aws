resource "aws_subnet" "private_subnet" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "10.1.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
        Name =  "myprivate subnet"
      }
}
