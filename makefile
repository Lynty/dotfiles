GCP_PROJECT_ID=g-lynnux
EMAIL=lynnux@google.com
SSH_DIR=$(HOME)/.ssh
FOLDER=test

gcc:
	gcloud config configurations create $(GCP_PROJECT_ID) && gcloud config set project $(GCP_PROJECT_ID) && gcloud config set account $(EMAIL)
	# example: make gcc GCP_PROJECT_ID=bananabread EMAIL=ldong-ext@bread.io

gen-ssh:
	mkdir -p $(SSH_DIR)/$(FOLDER) && ssh-keygen -t rsa -C $(EMAIL) -f $(SSH_DIR)/$(FOLDER)/id_rsa
	# example: make gen-ssh FOLDER=test --directory ~

test:
	docker run -it -v ~/lynnux_tests:/lynnux_tests --rm nixery.dev/shell/curl/git/vim bash

#build:
#	gcloud builds submit --tag $(REGION)-docker.pkg.dev/$(GCP_PRJ)/$(FOLDER)/$(APP_NAME):$(TAG)
