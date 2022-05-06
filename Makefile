CURDIR := $(shell pwd)
$(info "Start make at $(CURDIR)")

.PHONY: track-version
track-version:
	pushd startbootstrap-clean-blog; \
	git pull origin master --tags; \
	# Update tag version if original theme (https://github.com/StartBootstrap/startbootstrap-clean-blog) updated \
	git checkout refs/tags/v6.0.8; \
	popd

.PHONY: cp-src
cp-src:
	rm -rf src
	cp -R startbootstrap-clean-blog/src	src

