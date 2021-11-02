#DOCKER_TAG_VERSION=0.1
#DOCKER_REGISTRY_URL=gcr.io
#APP_NAME=html-lint
#GCR_TAG=$(DOCKER_REGISTRY_URL)/$(GCP_PROJECT)/$(APP_NAME)
#
#build:
#	docker build -t $(GCR_TAG):$(DOCKER_TAG_VERSION) .
#
#push:
#	docker push $(GCR_TAG):$(DOCKER_TAG_VERSION)
#
#auth:
#	gcloud auth configure-docker
EMAIL=lynn.dong@sada.com

gcc:
	gcloud config configurations create $(GCP_PROJECT_ID) && gcloud config set project $(GCP_PROJECT_ID) && gcloud config set account $(EMAIL)
	# example: make gcc GCP_PROJECT_ID=bananabread EMAIL=ldong-ext@bread.io

generate-ssh:
	ssh-keygen -t rsa -C $(EMAIL) -f $(HOME)/.ssh/$(SSH_FOLDER)/id_rsa
	#ssh-keygen -t ed25519 -C $(EMAIL)
