/*
  Project     : RobotShop Dev Environment
  Description : Creates EC2 instances and Route53 DNS records for each microservice
  AMI         : Configured via var.ami
  Type        : Configured via var.instance_type
  SG          : Configured via var.vpc_sg_id
*/

# -------------------------------------------------------
# Frontend - Web UI for the application
# -------------------------------------------------------
resource "aws_instance" "frontend" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

# -------------------------------------------------------
# MongoDB - NoSQL database
# -------------------------------------------------------
resource "aws_instance" "mongodb" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = var.zone_id
  name    = "mongodb-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

# -------------------------------------------------------
# Catalogue - Product catalogue microservice
# -------------------------------------------------------
resource "aws_instance" "catalogue" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = var.zone_id
  name    = "catalogue-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

# -------------------------------------------------------
# Redis - In-memory cache / session store
# -------------------------------------------------------
resource "aws_instance" "redis" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = var.zone_id
  name    = "redis-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}

# -------------------------------------------------------
# User - User management microservice
# -------------------------------------------------------
resource "aws_instance" "user" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = var.zone_id
  name    = "user-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.user.private_ip]
}

# -------------------------------------------------------
# Cart - Shopping cart microservice
# -------------------------------------------------------
resource "aws_instance" "cart" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = var.zone_id
  name    = "cart-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}

# -------------------------------------------------------
# MySQL - Relational database
# -------------------------------------------------------
resource "aws_instance" "mysql" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = var.zone_id
  name    = "mysql-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}

# -------------------------------------------------------
# Shipping - Shipping and delivery microservice
# -------------------------------------------------------
resource "aws_instance" "shipping" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = var.zone_id
  name    = "shipping-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}

# -------------------------------------------------------
# RabbitMQ - Message queue / event broker
# -------------------------------------------------------
resource "aws_instance" "rabbitmq" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = var.zone_id
  name    = "rabbitmq-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

# -------------------------------------------------------
# Payment - Payment processing microservice
# -------------------------------------------------------
resource "aws_instance" "payment" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_sg_id

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = var.zone_id
  name    = "payment-dev"
  type    = var.dns_type
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}