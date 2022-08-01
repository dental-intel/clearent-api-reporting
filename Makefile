.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/reporting.yaml \
  		-g php \
  		-o /local \
		--git-host github.com \
		--git-repo-id clearent-api-reporting \
		--git-user-id dental-intel \
		--invoker-package ClearentReportingApi \
		--package-name ClearentReportingApi

.PHONY: validate
validate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/reporting.yaml