CURDIR := $(shell pwd)
$(info "Start make at $(CURDIR)")

.PHONY: all
all: cp-js cp-css cp-scss cp-font cp-img

cp-js:
	cp -a startbootstrap-clean-blog/js static/
	cp -a startbootstrap-clean-blog/vendor/bootstrap/js/* static/js
	cp -a startbootstrap-clean-blog/vendor/jquery/* static/js

cp-css:
	cp -a startbootstrap-clean-blog/css static/
	cp -a startbootstrap-clean-blog/vendor/bootstrap/css/* static/css
	cp -a startbootstrap-clean-blog/vendor/fontawesome-free/css/* static/css

cp-scss:
	cp -a startbootstrap-clean-blog/scss static/
	# don't need bootstrap, font-awesome scss (we don't edit these but override)

cp-font:
	cp -a startbootstrap-clean-blog/vendor/fontawesome-free/webfonts static/

cp-img:
	cp -a startbootstrap-clean-blog/img static/
