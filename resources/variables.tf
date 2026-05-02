variable "ami" {
  default = "ami-076d128fb049922d4"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_sg_id" {
  default = ["sg-0fcfe62979bdd0bf1"]
}

variable "s3record" {
  default = "aws_route53_record"
}

variable "zone_id" {
  default = "Z01214421PKKTLXAI5VN5"
}


variable "dns_type" {
  default = "A"
}




