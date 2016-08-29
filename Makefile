BINDIR=/usr/local/bin
UNAME_S:=$(shell uname -s)

.PHONY: install uninstall

install:
	install -m775 -d $(BINDIR)
	@if [ "$(UNAME_S)" = "Linux" ]; then\
		install -m775 -t $(BINDIR) rssreader; \
	fi
	@if [ "$(UNAME_S)" = "Darwin" ]; then\
		install -m775 rssreader $(BINDIR); \
	fi

uninstall:
	rm -f $(BINDIR)/rssreader
	rm ~/.myrsslinks.csv
