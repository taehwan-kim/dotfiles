syntax enable
"filetype off                  " required
set tabstop=4
set shiftwidth=4
"set number

"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"

autocmd FileType make setlocal noexpandtab

"set wildmenu
"set wildmode=list:longest

"map <Leader>ff <ESC>:FufCoverageFile!<CR>
"map <Leader>fb <ESC>:FufBuffer!<CR>

"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'morhetz/gruvbox'

"Plugin 'kevinw/pyflakes-vim'
"Plugin 'lervag/vimtex'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <silent> <C-n> :NERDTreeToggle<CR>
"map <silent> <C-t> :TagbarToggle<CR>
map <silent> <C-t> :! lmk %<CR>
map <silent> <C-m> :! make<CR>

let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 0
let g:tagbar_usearrows = 1

let mapleader ="-"
nmap <S-j> <C-F>
nmap <S-k> <C-B>
noremap <Leader>v :vsplit<CR>
noremap <Leader>h :split<CR>

set encoding=utf-8
set autoread
set ttyfast
set ruler
set smartcase
set showmatch
set title
set gdefault

set formatoptions=tcq

"if has('statusline')
    "set laststatus=2
    "set statusline=%<%f\                        " Filenam
    "set statusline+=%w%h%m%r                    "
    "set statusline+=%{fugitive#statusline()}    "
    "set statusline+=\ [%{getcwd()}]          "
    "set statusline+=\ FileType:\ %y 			"
    "set statusline+=%=%-14.(%l,%c%V%)\ %p%%     "
"endif


nmap <C-h> :tabprev<CR>
nmap <C-l> :tabnext<CR>

nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit

nmap <leader>sp :set paste<cr> 
nmap <leader>np :set nopaste<cr> 

au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source ~/.vim/syntax/scala.vim
set mouse=a

colorscheme gruvbox

let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
"let g:vimtex_disable_version_warning = 1
