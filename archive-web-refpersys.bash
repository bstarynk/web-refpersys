#!/bin/bash
if [ ! -f gitid.bash ]; then
    echo $0: gitid.bash missing in $PWD > /dev/stderr
    exit 1
fi
if [ ! -d $HOME/tmp/ ]; then
    echo $0: missing $HOME/tmp/ directory > /dev/stderr
    exit 2
fi
source gitid.bash
export RPSWEB_GITID
rm -vf $HOME/tmp/web-refpersys*.tar.gz
git archive --prefix=web-refpersys-$RPSWEB_GITID/ -o $HOME/tmp/web-refpersys-$RPSWEB_GITID.tar.gz -v --worktree-attributes $RPSWEB_GITID
ls -ls  $HOME/tmp/web-refpersys-$RPSWEB_GITID.tar.gz
ln -sv $HOME/tmp/web-refpersys-$RPSWEB_GITID.tar.gz $HOME/tmp/web-refpersys.tar.gz
if [ -x $HOME/bin/post-archive-web-refpersys ]; then
    printf "%s: running %s\n" $0 $HOME/bin/post-archive-web-refpersys
    $HOME/bin/post-archive-web-refpersys
fi
logger --id=$$ -t $0 -i -s done $RPSWEB_GITID at $(date +%c) on $(hostname) for $0
