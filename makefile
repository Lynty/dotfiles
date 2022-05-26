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
SSH_DIR=$(HOME)/.ssh

gcc:
	gcloud config configurations create $(GCP_PROJECT_ID) && gcloud config set project $(GCP_PROJECT_ID) && gcloud config set account $(EMAIL)
	# example: make gcc GCP_PROJECT_ID=bananabread EMAIL=ldong-ext@bread.io

gen-ssh:
	mkdir -p $(SSH_DIR)/$(FOLDER) && ssh-keygen -t rsa -C $(EMAIL) -f $(SSH_DIR)/$(FOLDER)/id_rsa
	# example: make gen-ssh FOLDER=test --directory ~/Make

test:
	docker run -it -v ~/lynnux_tests:/lynnux_tests --rm nixery.dev/shell/curl/git/vim bash
