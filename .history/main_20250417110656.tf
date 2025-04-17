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

Example:
resource "aws_instance" "instance_name1" {
  ami           = "ami-0d89755ab94d81d77"
  instance_type = "t2.micro"
  
}


# Attributes:
Key = Value

# Data Types:
String "abcd"
number  2
boolean  true or false

List
list1 = ["item1","item2"]

security_groups = ["sg-1234","sg-5678"]

Map

variable "example_map"{
type = map
default = { key1 = "value1", key2 = "value2" }
}

Example:
locals {
my_map = { "name" = "John", "age" = 30, "is_admin" = true}
}
 
To get name value:
locals.my_map[name]


# Functions:

output "upper_env" {
  value = upper("development")
}
Output: "DEVELOPMENT"


output "lower_env" {
  value = lower("PRODUCTION")
}
Output: "production"


output "list_length" {
  value = length(["a", "b", "c"])
}
Output: 3


output "joined_string" {
  value = join("-", ["aws", "ec2", "dev"])
}
 Output: "aws-ec2-dev"


output "replaced_string" {
  value = replace("dev-environment", "dev", "prod")
}
Output: "prod-environment"


output "short_string" {
  value = substr("production", 0, 4)
}
Output: "prod"


# Conditions:

variable "env" {
  default = "prod"
}

resource "aws_instance" "example" {
  count         = var.env == "dev" ? 1 : 0
  ami           = "ami-0d89755ab94d81d77"
  instance_type = var.env == "dev" ? "t2.small" : "t2.micro"
}


*/


