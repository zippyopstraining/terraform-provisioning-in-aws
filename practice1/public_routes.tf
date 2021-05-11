resource "aws_route_table" "public_route_table" {
    vpc_id = "${aws_vpc.vpc.id}"
    tags {
        Name = "public route table"
    }
}
resource "aws_route" "public_route" {
	route_table_id  = "${aws_route_table.public_route_table.id}"
	destination_cidr_block = "0.0.0.0/0"
	nat_gateway_id = "${aws_internet_gateway.gw.id}"
}
resource "aws_route_table_association" "public_subnet_association" {
    subnet_id = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public_route_table.id}"
}
