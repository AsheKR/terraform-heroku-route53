variable "heroku_instance_name" {
	description = "Resource Identifier"
	default = ""
}

variable "heroku_api_key" {
	description = "API Key for Authorized Heroku User"
	type = string
	default = ""
}

variable "heroku_email" {
	description = "Email address for Authroized Heroku User"
	type = string
	default = ""
}

variable "aws_region" {
        type = string
	description = "AWS region to create the VPS and services"
        default = "ap-northeast-2"
}

variable "aws_access_key" {
        type = string
	description = "AWS access key associated with an IAM user or role"
}

variable "aws_secret_key" {
        type = string
	description = "The secret key associated with the access key. This is essentially the `password` for the access key"
}

variable "subdomain_name" {
        type = string
        description = "The DNS subdomain name where the server will be available"
}

variable "route53_zone_id" {
        type = string
        description = "Route 53 zone ID to create new DNS records within"
}
