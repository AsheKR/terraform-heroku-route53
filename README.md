# Terraform-heroku

Heroku 에서 인프라를 프로비저닝하기 위한 Terraform 모듈

## Requirements

### Browser

- [heroku account](https://signup.heroku.com/login)

### CLI

- [terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) : latest
- [heroku](https://devcenter.heroku.com/articles/heroku-cli) : latest

## Deployment

### Generate heroku token

아래서 발급된 `<TOKEN>` 을 가지고 다음 단계를 진행합니다.

```shell
$ heroku login
$ heroku authorizations:create --description <auth-key-description>
Creating OAuth Authorization... done
Client:      <none>
ID:          <ID>
Description: <auth-key-description>
Scope:       global
Token:       <TOKEN>
Updated at:  Thu Jan 14 2021 23:17:49 GMT+0900 (Korean Standard Time) (less than a minute ago)
```

### Set terraform environment

```shell
$ cp terraform.tfvars.sample terraform.tfvars
$ vi terraform.tfvars
```

- `heroku_instance_name`: 생성할 앱 인스턴스의 이름
- `heroku_api_key`: `<TOKEN>`
- `heroku_email`: heroku 로그인 이메일

### Apply

```shell
$ terraform plan
$ terraform apply
```

## Structure

```
heroku_instance:
	- free plan

database:
	- free plan
	- postgresql
```

