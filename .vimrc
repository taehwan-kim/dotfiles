syntax enable
"filetype off
"filetype plugin indent on

"set expandtab
set shiftwidth=4
set softtabstop=4
"set number

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

autocmd FileType make setlocal noexpandtab

"call pathogen#infect()
"set wildmenu
"set wildmode=list:longest
"
"map <Leader>ff <ESC>:FufCoverageFile!<CR>
"map <Leader>fb <ESC>:FufBuffer!<CR>
"map <Leader>fd <ESC>:FufDir!<CR>
"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'kevinw/pyflakes-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
" Plugin 'Valloric/YouCompleteMe'

" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
 
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
 
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
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
map <silent> <C-t> :TagbarToggle<CR>

let NERDTreeQuitOnOpen = 1 
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 0
let g:tagbar_usearrows = 1

let mapleader ="-"

" Leader Shortcuts
" ----------------

" Vertical split then hop to new buffer
" ,v to create a new vertical split
noremap <Leader>v :vsplit<CR>

" Horizontal split
" ,h to create a new horizontal split
noremap <Leader>h :split<CR>

" Make forward and back easier
" Shift-j to move a page down
" Shift-k to move a page up
nmap <S-j> <C-F>
nmap <S-k> <C-B>



" Tab configuration
" ,tn makes a new tab
nmap <leader>tn :tabnew<cr>
" ,te edits a file in a new tab
nmap <leader>te :tabedit

" ]p will paste with the same level of indent as the line above

" m <letter> will mark a section
" ` <letter> (backtick will return)
" `. goes to last edited line

" ,/ to clear highlights
nnoremap <leader>/ :noh<cr>

" Tab hotkeys
" ctrl-h to move to the left
" ctrl-l to move to the right
nmap <C-h> :tabprev<CR>
nmap <C-l> :tabnext<CR>

" Vim Settings
" ------------

" set autoindent
set encoding=utf-8
set autoread
set ttyfast
set ruler
set smartcase
set showmatch
set title
set gdefault

set formatoptions=tcq

if has('statusline')
    set laststatus=2
    set statusline=%<%f\                        " Filename
    set statusline+=%w%h%m%r                    " 
    set statusline+=%{fugitive#statusline()}    " 
    set statusline+=\ [%{getcwd()}]             " 
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%     " 
endif

