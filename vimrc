syntax on
set ai
set et
set autochdir
filetype plugin indent on
set ts=2 sw=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.cc,*.h set noic cin ts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.yaml,*.sls set filetype=yaml
autocmd BufRead,BufNewFile *.js,*.html,*.coffee,*.cjsx set noic cin ts=2 sw=2 expandtab
"autocmd BufRead,BufNewFile *.py set noic cin ts=4 sw=4 softtabstop=4 expandtab
autocmd BufRead,BufNewFile *.md set filetype=markdown

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'

" The bundles you install will be listed here

filetype plugin indent on
" The rest of your config follows here

augroup vimrc_autocmds
  autocmd!
  autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
  autocmd FileType python match Excess /\%120v.*/
  autocmd FileType python set nowrap
  autocmd FileType python setlocal completeopt-=preview
augroup END

" Powerline Setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8
set laststatus=2

" Nerd Tree
map <F2> : NERDTreeToggle<CR>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" Let's use Jedi
let g:pymode_rope = 0
"
" Documentation
let g:pymode_doc = 0
let g:pymode_doc_bind = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_on_write = 0
"
" Support virtualenv
let g:pymode_virtualenv = 1
"
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" Don't autofold code
let g:pymode_folding = 0
"
" No more 80
let g:pymode_options_colorcolumn = 0

" Jedi
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 1


set nonumber
