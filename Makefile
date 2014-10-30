all: style-guide.html
pdf: style-guide.pdf

style-guide.inc: style-guide.mdwn
	markdown >$@.n $<
	mv $@.n $@

style-guide.html: style-guide.m4 style-guide.inc
	m4 >$@.n $<
	mv $@.n $@

%.ps: %.html
	html2ps -D -n -o $@ $<

%.pdf: %.ps
	ps2pdf $< $@

clean:
	$(RM) style-guide.inc style-guide.html style-guide.ps style-guide.pdf
