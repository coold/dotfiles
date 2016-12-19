syntax enable
set path+=**
set wildmenu
set nu
command! MakeTags !ctags -R .
set nocompatible
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set laststatus=2
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'cognoscan/vim-vhdl'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
