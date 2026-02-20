# manga/Makefile

new:
	@read -p "Enter title name: " titlename; \
	mkdir -p $$titlename; \
	cp -r template/* $$titlename/; \
	echo "$$titlename created from template."
push:
	make -C .. rsync
	cd -P ../.. && sh push_to_github.sh
