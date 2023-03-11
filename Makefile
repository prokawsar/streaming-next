ecr_repo_name := prokawsar-repo
ecr_uri := 848641662902.dkr.ecr.ap-southeast-1.amazonaws.com
aws_region := ap-southeast-1
# version_tag := 1.0
version_tag := $(shell git rev-parse HEAD | cut -c 1-8)

aws_docker_login:
	aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin ${ecr_uri}
aws_docker_build:
	docker build -t ${ecr_repo_name}:${version_tag} .
	docker tag ${ecr_repo_name}:${version_tag} ${ecr_uri}/${ecr_repo_name}:${version_tag}
aws_docker_push:
	docker push ${ecr_uri}/${ecr_repo_name}:${version_tag}

# before this must have to login with docker hub credentials
hub_docker_build:
	docker build --platform=linux/amd64 -t portfolio .
	docker tag portfolio:latest prokawsar/web:latest
hub_docker_push:
	docker push prokawsar/web:latest
