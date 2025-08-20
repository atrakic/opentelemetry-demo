
all: fmt validate
	echo "+ $@"
	TF_VAR_hcloud_token=$(HCLOUD_TOKEN) terraform apply

.PHONY: fmt
fmt:
	echo "+ $@"
	terraform init -backend=false -upgrade
	terraform fmt -check=true -recursive

.PHONY: validate
validate:
	echo "+ $@"
	terraform validate || exit 1
