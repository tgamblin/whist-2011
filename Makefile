
TARGETS = index.html committee.html submissions.html program.html
EXTRAS = style.css whist-logo.jpg

all: $(TARGETS)

clean:
	rm -f $(TARGETS)

upload:
	scp $(TARGETS) $(EXTRAS) snapper.cs.unc.edu:www/whist-2011

$(TARGETS): %.html: %.html.in header.html footer.html
	cat header.html $< footer.html > $@
