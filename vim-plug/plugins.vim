" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " live server
  Plug 'turbio/bracey.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Interactive code
  Plug 'metakirby5/codi.vim'
  " Emmet
  Plug 'mattn/emmet-vim'
  " Find and replace
  Plug 'ChristianChiarulli/far.vim'
  " FZF
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Themes 
  Plug 'christianchiarulli/onedark.vim'
  Plug 'gruvbox-community/gruvbox'
  " Auto change html tags
  Plug 'AndrewRadev/tagalong.vim'
  " undo time travel
  Plug 'mbbill/undotree'
  " Status Bar
  Plug 'vim-airline/vim-airline'
  " Icons
  Plug 'ryanoasis/vim-devicons'
  " Commentary
  Plug 'tpope/vim-commentary'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Git
  Plug 'tpope/vim-fugitive'
  " See what keys do like in emacs 
  Plug 'machakann/vim-highlightedyank'
  " highlight all matches under cursor
  Plug 'RRethy/vim-illuminate'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Text Navigation
  Plug 'justinmk/vim-sneak'
  " Smooth scroll
  Plug 'psliwka/vim-smoothie'
  " Snippets
  Plug 'honza/vim-snippets'
  " Debugging
  Plug 'puremourning/vimspector'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Better tabline
  Plug 'mg979/vim-xtabline'

  " Plugin Graveyard
  " Plug 'scrooloose/nerdtree'
   

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif



