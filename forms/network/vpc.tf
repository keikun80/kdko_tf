resource "aws_vpc" "poc-network" {
    cidr_block = "10.10.0.0/16"
    tags = {
        Name="poc-network"
    }
}