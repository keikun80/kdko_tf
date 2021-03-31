resource "aws_route_table" "poc-pub-route" { 
    vpc_id = aws_vpc.poc-network.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.poc-igw.id
    } 
    tags = {
        Name ="poc-pub-route"
    }
}  

resource "aws_route_table_association" "public-route" { 
    subnet_id = aws_subnet.poc-pub-subnet.id 
    route_table_id = aws_route_table.poc-pub-route.id
}

resource "aws_route_table" "poc-pri-route" { 
    vpc_id = aws_vpc.poc-network.id
    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.poc-nat.id
    } 
    tags = {
        Name ="poc-pri-route"
    }
}  

resource "aws_route_table_association" "private-route" { 
    subnet_id = aws_subnet.poc-pri-subnet.id 
    route_table_id = aws_route_table.poc-pri-route.id
}