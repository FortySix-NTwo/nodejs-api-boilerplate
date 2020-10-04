.PHONY: tsc -w development

watch:
		tsc -w

development:
		nodemon --trace-warnings .
