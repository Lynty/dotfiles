syntax on

" autoload pathogen plugin
execute pathogen#infect()

" use 'jj' to escape INSERT mode
inoremap jj <ESC>

" when opening a new line, keep the same indent as the line you're currently on
set autoindent
set expandtab
set number
set shiftwidth=2
set softtabstop=2

set clipboard=unnamed

" colors are more vivid on terminals that have limited color options
set t_Co=256

" search while typing
set incsearch

" no surprises when using different distros and sanely resets options when re-sourcing .vimrc
set nocompatible

" tries to predict indentation based on filetype
filetype indent plugin on 

" better command-line completion
set wildmenu 
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" sets colorscheme which is from .vim/colors folder
colorscheme molokai

" case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Allow :W to write
command! W  write

" terraform
autocmd BufEnter *.tf* colorscheme icansee
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" Fix makefile tabs
autocmd FileType make setlocal noexpandtab

" set title to name of file being edited
set title

" highlight cursor line underneath the cursor horizontally
set cursorline

" show partial cmd you type
set showcmd

" STATUS LINE ------------------------------------------------------------ {{{
" Clear status line when vimrc is reloaded.
set statusline=
" Status line left side.
set statusline+=\ %F\ %R
" Show the status on the second to last line.
set laststatus=2
