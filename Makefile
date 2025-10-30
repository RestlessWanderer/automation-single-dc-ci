.PHONY: build-dc1
build-dc1: ## Build Configs
	ansible-playbook playbooks/build.yml -i sites/dc1/inventory.yml -e "target_fabric=dc1_fabric"

.PHONY: deploy-dc1
deploy-dc1: ## Deploy Configs
	ansible-playbook playbooks/deploy.yml -i sites/dc1/inventory.yml -e "target_fabric=dc1_fabric"

.PHONY: validate-dc1
validate-dc1: ## Validate Configs
	ansible-playbook playbooks/validate.yml -i sites/dc1/inventory.yml -e "target_fabric=dc1_fabric"

.PHONY: deploy-dc1_dt
deploy-dc1_dt: ## Deploy Configs - DT
	ansible-playbook playbooks/deploy_dt.yml -i sites/dc1/inventory_act.yml -e "target_fabric=dc1_fabric"

.PHONY: validate-dc1_dt
validate-dc1_dt: ## Validate Configs - DT
	ansible-playbook playbooks/validate_dt.yml -i sites/dc1/inventory_act.yml -e "target_fabric=dc1_fabric"