" Pathogen
execute pathogen#infect()
filetype plugin indent on
Helptags

" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-fugitive'
" Bundle 'Shougo/neocomplete.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/dbext.vim'
" Bundle 'vim-scripts/perforce.vim'
Bundle 'idbrii/vim-perforce'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-distinguished'
" Bundle 'jlanzarotta/bufexplorer'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'marijnh/tern_for_vim'
Bundle 'Shutnik/jshint2.vim'
Bundle 'bling/vim-airline'

Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'majutsushi/tagbar'

Bundle 'chrisbra/NrrwRgn'
Bundle 'vim-scripts/L9'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'lekv/vim-clewn'
Bundle 'chrisbra/csv.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'vim-scripts/genutils'
Bundle 'tpope/vim-surround'
Bundle 'mklabs/grunt.vim'
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'docunext/closetag.vim'
" Bundle 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END of Vundle

highlight comment ctermfg=darkmagenta
highlight Identifier ctermfg=red
highlight search ctermbg=lightgreen
syntax on
set backspace=indent,eol,start
set number
set autoindent
set expandtab
set smarttab
set ts=4
set shiftwidth=2
set nowrap
set wildmode=list:longest,full
set ignorecase
set smartcase
set incsearch
set hlsearch
" set cursorline        " have a line indicate the cursor location
set spl=en           " english spellchecking
nnoremap <F6> :set pastetoggle<CR>

set t_Co=256
" colorscheme desert
colorscheme distinguished

" searchfold
nnoremap <silent> ufa :set foldlevel=99<CR>
let g:searchfold_usestep = 3

nnoremap <silent> zj o<Esc>

map + <C-W>+
map - <C-W>-

" Vimgrep
" Search the current file for what's currently in the search register and display matches
nmap <silent> <leader>gs :vimgrep /<C-r>// ./* %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
 
" Search the current file for the word under the cursor and display matches
nmap <silent> <leader>gw :vimgrep /<C-r><C-w>/ ./* %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>


" NERDTree
nnoremap <F10> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.d$', '\.adserial$', '\.serial_parse$']
let NERDTreeDirArrows=0


" Taglist
nnoremap <silent> <leader>tl :TlistToggle<CR>
let Tlist_Auto_Open=0

" Syntastic
let g:syntastic_cpp_check_header = 1
let g:syntastic_javascript_checkers = ['jscs','jshint']

" FuzzyFinder
nnoremap <F6> :FufFile<CR>

" jshint2
let jshint2_save = 1
" jshint validation
nnoremap <silent><F7> :JSHint<CR>
inoremap <silent><F7> <C-O>:JSHint<CR>
vnoremap <silent><F7> :JSHint<CR>

" show next jshint error
nnoremap <silent><F8> :lnext<CR>
inoremap <silent><F8> <C-O>:lnext<CR>
vnoremap <silent><F8> :lnext<CR>

" show previous jshint error
nnoremap <silent><F9> :lprevious<CR>
inoremap <silent><F9> <C-O>:lprevious<CR>
vnoremap <silent><F9> :lprevious<CR>

" Indentation for .js
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
" backspace
set backspace=indent,eol,start

" CtrlP
map <silent> <leader>be :CtrlPBuffer<CR>
map <silent> <leader>e :CtrlP<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1

set tags+=./tags
 
" Create ctag file of current directory
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" VimGolf
set ai                  " set auto-indenting on for programming
 
set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column
 
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

" xterm copy/paste
set clipboard=unnamedplus

" YouCompleteMe / YCM
let g:ycm_confirm_extra_conf=0

" Tagbar
let g:tagbar_sort = 0

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
