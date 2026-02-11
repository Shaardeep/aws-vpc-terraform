#step 1 : Create VPC
resource "aws_vpc" "tVPC"{
	cidr_block = "170.0.0.0/16"
	tags = {
		name = "MyTerraformVPC"	
	}
}

#step 2 : Create a public subnet
resource "aws_subnet" "PublicSubnet"{
	vpc_id = aws_vpc.tVPC.id
	cidr_block = "170.0.1.0/24"
}

#step 3 : Create a private subnet
resource "aws_subnet" "PrivateSubnet"{
        vpc_id = aws_vpc.tVPC.id
        cidr_block = "170.0.2.0/24"
}

#step4 : create 1 new public subnet
resource "aws_subnet" "PublicSubnet_1b"{
	vpc_id = aws_vpc.tVPC.id
	cidr_block = "170.0.3.0/24"
	availability_zone = "ap-south-1b"

	tags = {
		Name = "public-subnet-1b"
	}
}

#step 4 : Create IGW
resource "aws_internet_gateway" "igw"{
	vpc_id = aws_vpc.tVPC.id
}
#step 5 : route table for public subnet
resource "aws_route_table" "PublicRT"{
	vpc_id = aws_vpc.tVPC.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.igw.id
	}
}
 
#step 6 : route table associate with public subnet
resource "aws_route_table_association" "PublicRTA"{
	subnet_id = aws_subnet.PublicSubnet_1b.id
	route_table_id =  aws_route_table.PublicRT.id

}
