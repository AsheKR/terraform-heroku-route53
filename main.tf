provider "heroku" {}
provider "aws" {
	region = var.aws_region
	access_key = var.aws_access_key
	secret_key = var.aws_secret_key
}

terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
		heroku = {
			source = "heroku/heroku"
		}
	}
}

resource "heroku_app" "heroku_instance" {
	name = var.heroku_instance_name
	region = "us"

	config_vars = {

	}
	sensitive_config_vars = {

	}
}

resource "heroku_addon" "database" {
	app = heroku_app.heroku_instance.name
	plan = "heroku-postgresql:hobby-dev"
}

resource "aws_route53_record" "route53" {
	zone_id = var.route53_zone_id
	name = var.subdomain_name
	type = "CNAME"
	ttl = "300"
	records = ["${heroku_app.heroku_instance.heroku_hostname}"]
}
