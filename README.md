vim Installation
==

Note: This is the lightweight distribution of my vimfiles. I mainly use it on my raspberry, and since I do not need most of the full features plugins nor latest features, this is a stripped down configuration. Nevertheless, I did not adjust complile settings for this, therefor this is actually Work In Progress, but can be used as a good starting point

Prerequisites (on Ubuntu & Linux Mint)
---
```
sudo apt-get install libpython3-dev libpython-dev libperl-dev libruby2.0 curl libx11-dev libxtst-dev libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev ruby-dev libncurses5-dev git mercurial terminator
```
You will need to use a good terminal emulator, such as terminator.

Install vim
---
... as we need it.

```
# do once:
mkdir ~/code
cd ~/code

hg clone https://vim.googlecode.com/hg/ vim
cd vim

# do regularly
cd ~/code/vim
hg pull
hg update
make distclean
./configure --with-x --enable-fail-if-missing --enable-rubyinterp=dynamic --enable-multibyte --enable-fontset --enable-gui=gtk2 --enable-gtk2-check --enable-gnome-check --enable-motif-check --with-features=huge --with-compiledby=Hendrik Bergunde --with-gnome --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-perlinterp=yes
make
sudo make install

# make sure everythin worked well:
# does the following command show a very recent version of vim?
# (i.e. not your distro's package version)
vim --version
```

Install vim configuration
---

```
git clone --branch=lightweight https://github.com/hendrikb/vimfiles.git ~/.vim
cp ~/.vimrc ~/.vimrc.old ; ln -sf ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim
./update_bundles.sh
```

Install most awesome  "Source Code Pro for Powerline" fonts on Ubuntu/Linux Mint
---
For Details on those fonts, that will make your vim will look pretty cool, check out the projects website:
https://github.com/Lokaltog/powerline-fonts

```
cd ~/code
git clone https://github.com/Lokaltog/powerline-fonts.git
cd powerline-fonts
./install.sh
```

After you installed your fonts to ```~/.fonts``` you should now switch to these
fonts in your terminal emulator application. Therefor, in Terminator for
example, go to the *Preferences* and disable system fonts, select "Source Code
Pro for Powerline" (or anything similar).

If colors don't seem to work (you should see a lot of yellow/green and syntax
highlighting), make sure your environment variable ```TERM``` is set to
something ```xterm-256color```. You can add something like...

```
export TERM=xterm-256color
```

... to your ```~/.bashrc```.

**You should now be able to able to use Vim from your command line.** :)
