set nocompatible

if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif

" start vundle junk
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'vim-scripts/desert.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'sjl/gundo.vim'
Plugin 'saltstack/salt-vim'
Plugin 'dag/vim-fish'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rodjek/vim-puppet'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'lepture/vim-jinja'
Plugin 'rust-lang/rust.vim'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

call vundle#end()
filetype plugin indent on
" end vundle junk

colorscheme torte

set ai
set incsearch
syntax on
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set scrolloff=5

set modeline modeline

set backspace=indent,eol,start
set ruler
set laststatus=1
set wildmenu
let g:go_version_warning = 0

" trailing whitespace is bad
highlight WhiteSpaceEOL ctermbg=red
autocmd InsertEnter * match WhiteSpaceEOL /\s\+\%#\@<!$/
autocmd InsertLeave * match WhitespaceEOL /\s\+$/

autocmd FileType make set noexpandtab
autocmd BufRead,BufNewFile *.bzl set filetype=python
autocmd BufRead,BufNewFile BUILD set filetype=python
autocmd BufRead,BufNewFile *.pyst set filetype=python


" leader stuff
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>u :GundoToggle<CR>

" esc is sad
imap jj <Esc>

" flake8
autocmd BufWritePost *.py call Flake8()

" rust
let g:rustfmt_autosave = 1

" vimrc

"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0

