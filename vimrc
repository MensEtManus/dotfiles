syntax enable

set backspace=indent,eol,start

let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set term=xterm-256color
"set termencoding=utf-8

set laststatus=2
set number
"set autoindent 
"autocmd FileType python compiler pylint

"================ adjust vim window size ====================
"if has("gui_running")
    "GUI is running or is about to start.
    " Maximize vim window 
"    set lines=999 columns=999
"else
   " This is console Vim
"   if exists("+lines")
"       set lines=50
"   endif
"   if exists("+columns")
"       set columns=100
"   endif
"endif
"================Python IDE config =========
"set ts=2 sw=2 sts=2 
"set tabstop=2 shiftwidth=2 expandtab
"set autoindent
set modeline
:set list lcs=tab:\|\ 
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
"================ Solarized Color Theme Configuration =========
"let g:solarized_termcolors=256
"set background=dark
colorscheme Tomorrow-Night-Eighties
set background=dark
"let g:solarized_termcolors = 256  " New line!!
"colorscheme solarized

"=============== Widget Configuration =======================
:set guioptions-=r  "remove right-hand scroll bar

"=============== NERDTree Configuration ======================
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
map <F2> :NERDTreeToggle<CR>
"nnoremap <C-n> :NERDTreeToggle<CR>
":let g:NERDTreeWinSize=40

"================= ycm C family configuration ================
let g:ycm_global_ycm_extra_conf = "~/.vim/Bundle/YouCompleteMe/.ycm_extra_conf.py"


"======================== Scripts configs ===================
"set tw=150
"set colorcolumn=120

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

set nocompatible              " be iMproved, required
filetype indent plugin on                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'

Bundle 'altercation/vim-colors-solarized'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'vim-ruby/vim-ruby'

Bundle 'Valloric/YouCompleteMe'

"Bundle 'davidhalter/jedi-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Track the engine.
Plugin 'SirVer/ultisnips'

"Plugin 'Rip-Rip/clang_complete'

" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" " Trigger configuration. Do not use <tab> if you use  https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
