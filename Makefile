.PHONY: build-dc1
build-dc1: ## Build Configs
	ansible-playbook playbooks/build.yml -i sites/dc1/inventory.yml -e "target_fabric=dc1_fabric"

.PHONY: deploy-dc1
deploy-dc1: ## Build Configs
	ansible-playbook playbooks/cv_deploy.yml -i sites/dc1/inventory.yml -e "target_fabric=dc1_fabric"