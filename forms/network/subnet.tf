resource "aws_subnet" "poc-pub-subnet" {
    vpc_id = aws_vpc.poc-network.id 
    cidr_block = "10.10.1.0/24" 
    availability_zone = "us-east-1a"
    tags = {
        Name ="poc-pub-subnet"
    }
}

resource "aws_subnet" "poc-pri-subnet" {
    vpc_id = aws_vpc.poc-network.id 
    cidr_block = "10.10.2.0/24" 
    availability_zone = "us-east-1a"
    tags = {
        Name ="poc-pri-subnet"
    }
}