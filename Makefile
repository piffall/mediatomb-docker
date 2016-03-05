all: build

build:
	@docker build --tag=piffall/mediatomb .
