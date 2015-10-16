NAME =			moul-image-bench
VERSION =		latest
VERSION_ALIASES =	
TITLE =			moul-bench-bench
DESCRIPTION =		Image with benchmark tools
SOURCE_URL =		https://github.com/moul/scaleway-image-bench


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
