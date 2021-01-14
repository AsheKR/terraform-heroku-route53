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
