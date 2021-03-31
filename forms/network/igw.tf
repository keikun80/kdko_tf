resource "aws_internet_gateway" "poc-igw" { 
    vpc_id=aws_vpc.poc-network.id 
    tags = {
        Name = "poc-igw" 
    } 
}