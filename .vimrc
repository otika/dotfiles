" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'Shougo/vimfiler'
 NeoBundle 'Shougo/vimproc'
 NeoBundle 'Shougo/neosnippet.vim'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4

set autoindent
set nocindent
set nosmartindent
filetype indent off

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set nrformats-=octal
set hidden

set virtualedit=block
set whichwrap=b,s,[,],<,>

set backspace=indent,eol,start

set clipboard+=unnamed
set clipboard=unnamed
set matchpairs& matchpairs+=<:>
set showmatch
set hlsearch
set history=10000
set mouse=a
set ttymouse=xterm2
set showcmd

" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
