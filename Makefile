# manga/Makefile

new:
	@read -p "Enter title name: " titlename; \
	mkdir -p $$titlename; \
	cp -r template/* $$titlename/; \
	echo "$$titlename created from template."

