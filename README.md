# Elm

A delightful language for reliable webapps.

Check out the [Home Page](http://elm-lang.org/), [Try Online](http://elm-lang.org/try), or [The Official Guide](http://guide.elm-lang.org/)


<br>

## Install

✨ [Install](https://guide.elm-lang.org/install/elm.html) ✨

For multiple versions, previous versions, and uninstallation, see the instructions [here](https://github.com/elm/compiler/blob/master/installers/README.md).

<br>

## Help

If you are stuck, ask around on [the Elm slack channel][slack]. Folks are friendly and happy to help with questions!

[slack]: http://elmlang.herokuapp.com/

## Install in 2023

Thanks to https://codeberg.org/vlkrs/elm-compiler for helping me figure out how to get Elm updated for GHC 9.x.

Follow https://github.com/based-template/building-elm-from-source

sudo apt install pkg-config
sudo apt install libgmp3-dev
sudo apt install m4

wget ftp://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2
bunzip2 gmp-4.3.2.tar.bz2
tar xvf gmp-4.3.2.tar
cd gmp-4.3.2
./configure --disable-shared --enable-static --prefix=/tmp/gcc
make && make check && make install
