DOCKER_NAMESPACE =	moul/armhf-
NAME =			ocs-bench
VERSION =		latest
VERSION_ALIASES =	15.04 vivid
TITLE =			bench
DESCRIPTION =		Image with benchmark tools
SOURCE_URL =		https://github.com/moul/ocs-image-bench


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides
