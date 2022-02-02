" be iMproved, required
set nocompatible
" required
filetype off

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on
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

set noerrorbells
set nobackup
set nowritebackup
set noswapfile
set noundofile
set number relativenumber
set nowrap
set incsearch
set smartcase
set autoindent
set expandtab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noshowmode

" Syntax Highlighting
if has ("syntax")
  syntax on
endif

if !has('gui_running')
  set t_Co=256
endif

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set relativenumber   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set norelativenumber | endif
augroup END

" File format, File encoding
set fileformat=unix
set fileformats=unix,dos
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp949

"
" Keymap
"
" Set space as Leader key
nnoremap <Space> <Nop>
let mapleader=" "

" Window navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Buffers
nnoremap <leader>p :bp<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>d :bd<CR>

"
" Plugins options
"
" Jellybeans
colorscheme jellybeans

" Indent guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" NERDTree
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeToggle<CR>

" Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" for vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='jellybeans'
