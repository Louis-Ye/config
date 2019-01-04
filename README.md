# Config
Louis's personal preferences for various software configurations

## Vim
Plugin manager: [pathogen](https://github.com/tpope/vim-pathogen)

Plugins:
* [cscope_maps.vim](http://cscope.sourceforge.net/cscope_maps.vim) (prerequisite: [cscope](http://cscope.sourceforge.net/)) (enable without git submodule)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [tcomment_vim](https://github.com/tomtom/tcomment_vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [Setup SilverSearcher in Vim](https://robots.thoughtbot.com/faster-grepping-in-vim) (prerequisite: [SilverSearcher](https://github.com/ggreer/the_silver_searcher)) (enable without git submodule)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (prerequisite: please refer to installation steps in [YouCompleteMe](https://github.com/Valloric/YouCompleteMe))
* [vim-sleuth](https://github.com/tpope/vim-sleuth)
* [vim=colorschemes](https://github.com/flazz/vim-colorschemes.git)

### How to enable and install

Link .vimrc file:
```
# Assume you are under the root directory of this repo
ln -s `pwd`/Vim/.vimrc ~/.vimrc
ln -s `pwd`/Vim/.vim ~/.vim
```

`git submodule update --init --recursive` to enable plugins

Following are the convenient commands for installing pre-requisites. If it doesn't work, please refer to the original installation steps in the provided links above.

**Linux**
```
# Install cscope
sudo apt install cscope
# Install silver searcher
sudo apt install silversearcher-ag
# YouCompleteMe installation steps
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
**MacOS**
```
# Install cscope
brew install cscope
# Install silver searcher
brew install the_silver_searcher
# YouCompleteMe installation steps
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

## Git
Link .gitconfig file:
```
# Assume you are under the root directory of this repo
ln -s `pwd`/Git/.gitconfig ~/.gitconfig
```

## Sublime 3 
Plugins (just the name of the plugins, not the repos or code, install them through Sublime Package Control)
* cmake
* GitGutter
* trimmer
* Wrap Plus
* AutoWrap
* EasyClangComplete

