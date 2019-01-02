set shell=/bin/bash
set ttyfast
set lazyredraw

let $PATH='/usr/local/bin:' . $PATH

" Include plugin files
if filereadable(expand("~/.config/.vimrc.bundles"))
	source ~/.config/.vimrc.bundles
endif

" Sessions
let g:session_autoload = 'no'

" NerdTRee config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

filetype plugin indent on

augroup vimrcEx
	autocmd!

	" For all text files set 'textwidth' to 78 characters.
	autocmd FileType text setlocal textwidth=78

	" When editing a file, always jump to the last known cursor position.
	" Don't do it for commit messages, when the position is invalid, or when
	" inside an event handler (happens when dropping a file on gvim).
	autocmd BufReadPost *
	\ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

	" Set syntax highlighting for specific file types
	autocmd BufRead,BufNewFile Appraisals set filetype=ruby
	autocmd BufRead,BufNewFile *.md set filetype=markdown

	" Enable spellchecking for Markdown
	autocmd FileType markdown setlocal spell

	" Automatically wrap at 80 characters for Markdown
	autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Reduce timeout after <ESC> is recieved.
set timeout
set ttimeout
set ttimeoutlen=225
set timeoutlen=225

" highlight vertical column of cursor
set cursorline

" Leave paste mode on exit
au InsertLeave * set nopaste

set noerrorbells  " No beeps
set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set ignorecase
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set autoread " Automatically reread changed files without asking me anything

" Numbers
set number        " Always show line numbers
set colorcolumn=105 " Show a horisontal bar at 105 characters to avoid long lines
set norelativenumber
set numberwidth=5

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,b,u,t

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Indendation configuration
set autoindent
set smartindent
set cindent
set filetype=html
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set smartcase

set guifont=Roboto\ Mono\ for\ Powerline:h12
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" have jsx highlighting/indenting work in .js files as well
let g:jsx_ext_required = 0

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

let g:mta_filetypes = {
	\ 'html' : 1,
	\ 'xhtml' : 1,
	\ 'xml' : 1,
	\ 'jinja' : 1,
	\ 'phtml' : 1,
	\ 'php' : 1,
	\ 'jsx' : 1,
	\ 'js' : 1,
\}

" Enable mouse if its supported
if has('mouse')
	set mouse=a
endif

filetype indent on
syntax on

if filereadable(expand("~/.config/.vimrc.keybindings"))
	source ~/.config/.vimrc.keybindings
endif

if filereadable(expand("~/.config/.vimrc.colorscheme"))
	source ~/.config/.vimrc.colorscheme
endif

if filereadable(expand("~/.config/.vimrc.statusline"))
	source ~/.config/.vimrc.statusline
endif

if filereadable(expand("~/.config/.vimrc.local"))
	source ~/.config/.vimrc.local
endif

