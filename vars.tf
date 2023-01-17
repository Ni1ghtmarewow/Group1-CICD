# Defining Region
variable "aws_region" {
    default = "eu-west-1"
}

variable "awsvpc_id" {
    default = "vpc-002048b984b510d58"
}

variable "awsvpc2_id" {
    default = "vpc-08b53a358954edb27"
  
}

variable "ssh_port" {
    default = 22
}

variable "http_port" {
    default = 80
}

variable "https_port" {
    default = 443
}

variable "splunk_port" {
    default = 8000
}

variable "replication_port" {
    default = 8089
}

variable "management_port" {
    default = 4598
}

variable "ingestion_port" {
    default = 9997
}