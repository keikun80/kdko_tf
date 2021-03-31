resource "aws_eip" "poc_nat_eip" { 
    vpc = true
}
resource "aws_nat_gateway" "poc-nat" {
    allocation_id = aws_eip.poc_nat_eip.id
    subnet_id = aws_subnet.poc-pri-subnet.id 
    tags ={
        Name ="poc-nat-gw"
    }
}