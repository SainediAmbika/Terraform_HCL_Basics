/*


#Block

block_type {
    attribute1 = value1
    attribute2 = value2
}

(or)

block_type "label1" "label2" {
  argument_name = "value"
  nested_block {
    nested_argument = "value"
  }
}
*/

resource "aws_instance" "instance_name1" {
  ami           = "ami-0d89755ab94d81d77"
  instance_type = "t2.micro"
  
}
