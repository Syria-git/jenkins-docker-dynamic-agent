.PHONY: build agent run deploy clean help

help:
	@echo "Available commands:"
	@echo "  make build   - Build Docker agent image"
	@echo "  make agent   - Run dynamic agent container"
	@echo "  make deploy  - Deploy web application"
	@echo "  make clean   - Cleanup containers and images"

build:
	docker build -t convert2arabic-agent ci/

agent:
	docker run -d --name convert2arabic-agent \
	-v $(PWD)/app:/app \
	-w /app \
	convert2arabic-agent sleep 300

deploy:
	mkdir -p /var/www/html/convert
	cp -r app/* /var/www/html/convert/

clean:
	docker rm -f convert2arabic-agent || true
	docker rmi convert2arabic-agent || true
