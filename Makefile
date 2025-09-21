.PHONY: help
help:
	@echo "Usage: make [build|upload|monitor|compiledb]"

.PHONY: compiledb
compiledb:
	pio run -t compiledb

.PHONY: build
build:
	pio run

.PHONY: upload
upload:
	pio run --target upload

.PHONY: monitor
monitor:
	pio device monitor

