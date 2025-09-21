.PHONY: help
help:
	@echo "Usage: make [build|upload|monitor|compiledb]"

.PHONY: check_pio
check_pio:
	@command -v pio >/dev/null 2>&1 || (echo "Error: pio command not found. Please install PlatformIO Core." && exit 1)

.PHONY: compiledb
compiledb: check_pio
	@pio run -t compiledb

.PHONY: build
build: check_pio
	@pio run

.PHONY: upload
upload: check_pio
	@pio run --target upload

.PHONY: monitor
monitor: check_pio
	@pio device monitor
