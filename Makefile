.PHONY: build

build:
	sam build

deploy-infra:
	sam build && aws-vault exec resume-user --no-session -- sam deploy

deploy-site:
	aws-vault exec resume-user --no-session -- aws s3 sync ./resume-website s3://resume-project-bucket