filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Bundle 'bitc/vim-bad-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Quramy/tsuquyomi'
Plugin 'morhetz/gruvbox'
Plugin 'ap/vim-buftabline'

call vundle#end()            " required
"filetype plugin indent on    " required
:command! -nargs=1 Dgo !dgo build <f-args>
:command! -nargs=1 Drun !dgo <f-args>
:command! -nargs=1 Ddlv !dgo dlv debug <f-args>

set clipboard=unnamed
syntax on
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix
au BufNewFile,BufRead *.js
    \ set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.html
    \ set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd BufNewFile,BufRead *.ts  set filetype=typescript
autocmd BufNewFile,BufRead *.tsx setfiletype typescript

set nu
set nocompatible              " required

set foldmethod=indent
set foldlevel=99

set background=dark
colorscheme gruvbox

map <C-S-I> :NERDTreeToggle<CR>
set rtp+=/usr/local/opt/fzf

set hidden
nnoremap <C-S-P> :bnext<CR>
nnoremap <C-S-O> :bprev<CR>
nnoremap <C-W>w :bd<CR>
