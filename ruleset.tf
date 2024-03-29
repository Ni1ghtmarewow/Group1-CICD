provider "aws" {
  region = "${var.aws_region}"
}

# Creating Security Group
resource "aws_security_group" "demosg" {
  name        = "CICD Security Group"
  description = "Demo Module"
  vpc_id      = var.awsvpc_id

  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # SSH access from specific IPs
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]#change the IPs that able to joig SSH connection
  }

  # SSH access from anywhere
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["145.93.137.59/32", "145.93.136.155/32"]
  }

  # Splunk default port
  ingress {
    from_port   = var.splunk_port
    to_port     = var.splunk_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  # Replication Port
  ingress {
    from_port   = var.replication_port
    to_port     = var.replication_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Management Port
  ingress {
    from_port   = var.management_port
    to_port     = var.management_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Ingestion Port
  ingress {
    from_port   = var.ingestion_port
    to_port     = var.ingestion_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound Rules
  # Internet access to anywhere
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "democicd" {
  name        = "CICD Security Group"
  description = "Demo Module"
  vpc_id      = var.awsvpc2_id

  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTPS access from anywhere
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH access from specific IPs
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["145.93.137.59/32", "145.93.136.155/32"]#change the IPs that able to joig SSH connection
  }
}