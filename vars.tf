# Defining Region
variable "aws_region" {
    default = "eu-west-1"
}

variable "awsvpc_id" {
    default = "vpc-0932b08efe907f418"
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