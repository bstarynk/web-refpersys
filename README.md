# web-refpersys

the web pages related to [refpersys.org](http://refpersys.org) (which
is not yet online in october 2019). **Work in progress**

See [gitlab.com/bstarynk/refpersys](https://gitlab.com/bstarynk/refpersys) for the GPLv3+ code of that ambitious research project.

Read the incomplete [refpersys-design.pdf](http://starynkevitch.net/Basile/refpersys-design.pdf) document about our design ideas. **Work in progess**

These web pages are licensed under [CC-BY-SA
4.0](https://creativecommons.org/licenses/by-sa/4.0/) unless otherwise
specified. The copyright belongs to the *RefPerSys team* ; see the
`LICENSE.md` markdown file for more.

These web pages are using the [Hugo](https://gohugo.io/) framework (an
open source static site generator coded in
[Go](http://go-lang.org/)...)  for building websites.

## the RefPerSys team

 *      Basile Starynkevitch <basile@starynkevitch.net>, 
        homepage http://starynkevitch.net/Basile/
		92340 Bourg La Reine, near Paris, France. 
		Usual timezone `TZ=MEST`
 *      Abhishek Chakravarti <abhishek@taranjali.org> or
           <chakravarti.avishek@gmail.com> Kolkata 700032,
           India. Usual timezone `TZ=Asia/Kolkota`
 *      Nimesh Neema <nimeshneema@gmail.com>  Indore 452002, India


## installing the RefPerSys website.

See the `Makefile` for Linux. run `make` to build the tarball, and
`make install` is using some `install-refpersys-web-page.sh` shell
script (that you might have in your `$HOME/bin/`). 

The `make archive` command produces a `tar.gz` archive in your
`$HOME/tmp/` directory of this `git` repository.
