.PHONY: build-
build-: ## Build Configs
	ansible-playbook playbooks/build.yml -i sites/name/inventory.yml -e "target_fabric=fabric_name"