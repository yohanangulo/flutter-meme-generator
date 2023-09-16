.PHONY: help clean build watch analyze test check check-unused check-unused-files check-unused-l10n check-unused-code

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean project
	@echo "Cleaning the project..."
	@flutter clean
	@flutter pub get

build: ## Trigger one time code generation
	@echo "Generating code..."
	@dart run build_runner build --delete-conflicting-outputs

watch: ## Watch files and trigger code generation on change
	@echo "Generating code on the fly..."
	@dart run build_runner watch --delete-conflicting-outputs
