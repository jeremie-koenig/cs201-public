all: style-guide.html

style-guide.inc: style-guide.mdwn
	markdown >$@.n $<
	mv $@.n $@

style-guide.html: style-guide.m4 style-guide.inc
	m4 >$@.n $<
	mv $@.n $@

clean:
	$(RM) style-guide.inc style-guide.html
