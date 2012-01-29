INSTALLATION
============

```bash
cd ~
git clone http://zensatons.github.com/dotvim.git .vim
cd .vim
mkdir swaps
mkdir backups
git submodule init
git submodule update
cd bundle/command-t
rake make
```


USAGE
=====

Apart from various syntax highlighting and convenience plugins, there are some settings and extensions which require special treatment.

- plugins are managed with pathogen
- mapleader is set to ','
- tab will fire up omnicomplete
- sourround and delimitMate are active
- pasta is active


Bindings
--------
,t:
  Fuzzy-Search for file in current directory.

,b:
  Fuzzy-Search for open files buffers.

,f:
  Toggle filetree.

,g:
  Toggle taglist.

,c<space>:
  Comment/Uncomment current line(s).

,s:
  Turn buffer into a bash-shell.


Plugins
-------

Some plugins are pretty powerful and require more extensive explanation:

Fugitive: Should-be-illegal Git wrapper. See screencasts on vimcasts.org
Surround: Edit surroundings (quotes, brackets ...) fast as hell.
ConqueTerm: Turns a buffer into a shell of any kind.
