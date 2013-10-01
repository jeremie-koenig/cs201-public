style-guide.html: style-guide.mdwn
	markdown >$@.n $<
	mv $@.n $@
