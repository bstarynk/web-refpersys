## file web-refpersys/Makefile
## for Linux
## public domain

# https://gohugo.io/
HUGO= hugo
RM= rm -vf
.PHONY: all clean install export

################ default target
all:


################ cleaning target
clean:
	$(RM) *~
################ installing

install: all
	[ -x $HOME/bin/install-refpersys-web-page.sh ] && $HOME/bin/install-refpersys-web-page.sh

################ exporting an archive to $HOME/tmp/
export:
## should use git archive

## end of Makefile
