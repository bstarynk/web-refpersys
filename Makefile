## file web-refpersys/Makefile
## for Linux, e.g. Debian
## public domain

# https://gohugo.io/
HUGO= hugo
RM= rm -vf
BASH= bash
.PHONY: all clean install export

################ default target should run Hugo
all: gitid.bash

##### the gitid as a sourcable shell script containing for example
##### RPSWEB_GITID=9caf8d3dbc8a83fe78a8
gitid.bash: Makefile
	gitid=$$(git log --format=oneline --abbrev=20 --abbrev-commit -q  \
	     | head -1 | tr -d '\n\r\f\"\\\\' | cut -d' ' -f1); \
	printf 'RPSWEB_GITID=%s\n' $$gitid > $@

################ cleaning target
clean:
	$(RM) *~ gitid.bash

################ installing

install: all
	[ -x $HOME/bin/install-refpersys-website.sh ] && $HOME/bin/install-refpersys-website.sh

################ exporting an archive to $HOME/tmp/
export: gitid.bash
	@head -v $^ ; printf "======\n"
	$(BASH) -cxv "source gitid.bash ; export RPSWEB_GITID ; git archive --prefix=web-refpersys-$$RPSWEB_GITID/ -o $$HOME/tmp/web-refpersys-$$RPSWEB_GITID.tar.gz -v --worktree-attributes $$RPSWEB_GITID"
	$(BASH) -cxv "source gitid.bash ; export RPSWEB_GITID ; ln -sv $$HOME/tmp/web-refpersys-$$RPSWEB_GITID.tar.gz $$HOME/tmp/web-refpersys.tar.gz ; ls -ls $$HOME/tmp/web-refpersys*tar.gz"

## end of Makefile
