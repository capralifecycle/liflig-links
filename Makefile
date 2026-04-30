IMAGE_NAME ?= liflig-links
PORT ?= 8000

.PHONY: all
all: build test

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: test
test:
	./test-image.sh $(IMAGE_NAME)

.PHONY: run
run: build
	@echo "Serving at http://localhost:$(PORT)"
	docker run --rm -p 127.0.0.1:$(PORT):80 -v $(CURDIR)/www:/usr/share/nginx/html $(IMAGE_NAME)

.PHONY: clean
clean:
	# Leading `-` ignores the exit code so `clean` succeeds when the image is already gone.
	-docker image rm $(IMAGE_NAME)

.PHONY: validate-renovate-config
validate-renovate-config:
	npx --yes --package renovate@latest -- renovate-config-validator --strict renovate.json
