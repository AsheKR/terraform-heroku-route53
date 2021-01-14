provider "heroku" {}

terraform {
	required_providers {
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
