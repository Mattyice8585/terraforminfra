resource "aws_security_group" "tfer--AutoScaling-Security-Group-1_sg-0081ba6a3ea6bc190" {
  description = "AutoScaling-Security-Group-1 (2020-01-27 09:01:32.410-05:00)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "AutoScaling-Security-Group-1"
  vpc_id = "vpc-6b5b2911"
}


resource "aws_security_group" "tfer--My-0020-First-0020-Security-0020-Group_sg-0f8088c67fd659c27" {
  description = "Created with my first ec2 instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH to the instance"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    description     = "Allow HTTP Traffice for Apache"
    from_port       = "80"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--MyFirstLoadBalancer_sg-014c101fd5b851268_id}"]
    self            = "false"
    to_port         = "80"
  }

  name   = "My First Security Group"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--MyFirstLoadBalancer_sg-014c101fd5b851268" {
  description = "MY first Load Balancer security Group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "true"
    to_port     = "80"
  }

  name   = "MyFirstLoadBalancer"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--Security-0020-Group-0020-for-0020-WordPress_sg-0fd1bbbe91ac926b7" {
  description = "all traffic to Wordpress"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  name   = "Security Group for WordPress"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--Windows-0020-Group_sg-047e4c1748d431f63" {
  description = "launch-wizard-2 created 2020-07-30T15:36:44.702-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH for Admin"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  name   = "Windows Group"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--default_sg-000492c6254184329" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0ab1c865b92fc8f5f"
}

resource "aws_security_group" "tfer--default_sg-462f5d1a" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-10_sg-058a8ba6cdbcf9f59" {
  description = "launch-wizard-10 created 2022-07-28T20:36:47.731Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-10"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0e9b1aa349b5d6a3d" {
  description = "launch-wizard-1 created 2020-07-28T10:49:56.241-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-2_sg-04ef8867c4d1cd543" {
  description = "launch-wizard-2 created 2020-08-05T14:03:41.767-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-2"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-3_sg-0cb586de1ca5e0465" {
  description = "DeLETED UPDATE LOOK AT ME"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-3"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-4_sg-0ee5fd7a6435497da" {
  description = "launch-wizard-4 created 2020-08-05T14:57:28.294-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "launch-wizard-4"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-5_sg-0753091bc56a83b27" {
  description = "launch-wizard-5 created 2020-08-06T07:24:46.137-04:00 LOOK AT ME"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["73.13.93.80/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-5"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-6_sg-0d423a37d120ee6f2" {
  description = "launch-wizard-6 created 2020-07-27T13:42:42.913-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  name   = "launch-wizard-6"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-7_sg-0b1a7ffe6da0367ed" {
  description = "launch-wizard-7 created 2020-08-06T07:59:30.368-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  name   = "launch-wizard-7"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-8_sg-08a8899babe35cfd7" {
  description = "launch-wizard-8 created 2020-08-07T08:02:04.928-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name   = "launch-wizard-8"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--launch-wizard-9_sg-0b8b6795042d97ca5" {
  description = "launch-wizard-9 created 2021-11-01T18:29:35.393-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-9"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--my-first-security-group_sg-0a5683e92bd8f8586" {
  description = "Created with my first EC2 Instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH to the instance"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "my-first-security-group"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--my-new-sg_sg-096826fe16c15dec1" {
  description = "Test New Group UPDATED LOOK FOR ME"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name   = "my-new-sg"
  vpc_id = "vpc-6b5b2911"
}

resource "aws_security_group" "tfer--sysadmin-sg_sg-0336c677904a51614" {
  description = "Sysadmin Security Group"
  name        = "sysadmin-sg"
  vpc_id      = "vpc-6b5b2911"
}
