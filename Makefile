CURDIR := $(shell pwd)
$(info "Start make at $(CURDIR)")

.PHONY: track-version
track-version:
	pushd startbootstrap-clean-blog; \
	git pull origin master --tags; \
	# Update tag version if original theme (https://github.com/StartBootstrap/startbootstrap-clean-blog) updated \
	git checkout refs/tags/v6.0.8; \
	popd

.PHONY: cp-all
cp-all:
	cp startbootstrap-clean-blog/dist/css/* static/css/; \
	cp startbootstrap-clean-blog/dist/js/* static/js/; \
	cp startbootstrap-clean-blog/assets/img/* static/img/; \
	cp startbootstrap-clean-blog/assets/favicon.ico static/
