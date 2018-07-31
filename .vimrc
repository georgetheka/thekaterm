set nocompatible                  " Must come first because it changes other options.

set mouse=a                       " Turn on mouse

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent

set laststatus=2                  " Show the status line all the time

set splitbelow                    " Split configuration
set splitright

set foldmethod=indent             " Folding
set foldlevel=99
nnoremap <space> za

" Status Line 
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Color Scheme
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'fatih/vim-go'
Plug 'derekwyatt/vim-scala'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'
call plug#end()

set autowrite
set encoding=utf-8

let g:go_highlight_types = 1          " vim-go optimizations 
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']

let g:rustfmt_autosave = 1           " Rust format

nnoremap <leader>. :CtrlPTag<cr>     " ctags mappings

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>
imap <S-Tab> <C-n> 
map <Leader>\ :NERDTreeToggle<CR>
map <Leader>b :CtrlP<CR>             
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>cp :w !pbcopy<CR>
nmap <Leader>ps :r !pbpaste<CR>

" Tab Mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Specific File Formats
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
