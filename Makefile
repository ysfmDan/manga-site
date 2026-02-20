# manga/Makefile

new:
	@read -p "Enter title name: " titlename; \
	mkdir -p $$titlename; \
	cp -r template/* $$titlename/; \
	echo "$$titlename created from template."
push:
	cd -P ../.. && sh push_to_github.sh
	make -C .. rsync
