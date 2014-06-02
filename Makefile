all: html

site_dir = _site

.PHONY: cv html

FORCE:

html:: $(site_dir)/.nojekyll \
	cv \
	FORCE
	jekyll build

%/.nojekyll:
	touch $*/.nojekyll

cv: 
	$(MAKE) -C cv
