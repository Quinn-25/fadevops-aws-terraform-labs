variable "ami_id" {
    default = "ami-0df7a207adb9748c7"
}

variable "number_of_instances" {
    default = 1
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ami_key_pair_name" {
    default = "aws-ubuntu"
}