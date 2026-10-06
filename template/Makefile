# manga/$titlename/Makefile

PNG_FILES = $(wildcard *.png)
WEBP_FILES = $(PNG_FILES:.png=.webp)

all: $(WEBP_FILES)

%.webp: %.png
	magick $< -quality 75 $@
	@echo "Converted $< to $@"
	git add *.html *.webp *.css
clean:
	rm -f *.webp

