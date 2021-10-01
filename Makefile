PROJECT_NAME := $(shell basename $(CURDIR))
IMAGE_NAME := $(PROJECT_NAME)_server

copy_node_modules:
	@echo $(PROJECT_NAME)
	docker create -it --name dummy $(IMAGE_NAME)
	docker cp dummy:/$(PROJECT_NAME)/node_modules .
	docker rm -f dummy

clean:
	rm -rf node_modules
