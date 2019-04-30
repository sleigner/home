" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/dbext.vim'
" Plug 'vim-scripts/perforce.vim'
Plug 'idbrii/vim-perforce'
Plug 'Lokaltog/vim-easymotion'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'marijnh/tern_for_vim'
Plug 'Shutnik/jshint2.vim'
Plug 'bling/vim-airline'

Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/L9'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-unimpaired'
" Plug 'chrisbra/csv.vim'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/genutils'
Plug 'tpope/vim-surround'
Plug 'mklabs/grunt.vim'
" Plug 'zhaocai/GoldenView.Vim'
Plug 'docunext/closetag.vim'
Plug 'godlygeek/tabular'
Plug 'rhysd/vim-clang-format'
Plug 'JonAWhite/vim-cpplint'
Plug 'mattn/emmet-vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'tpope/vim-rhubarb'

" Color theme
Plug 'Lokaltog/vim-distinguished'
Plug 'goatslacker/mango.vim'

Plug 'posva/vim-vue'
Plug 'kassio/neoterm'

Plug 'bigfish/neovim-eslint'

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'


" Plug 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call plug#end()

highlight comment ctermfg=darkmagenta
highlight Identifier ctermfg=red
highlight search ctermbg=lightgreen
syntax on
syntax enable
set backspace=indent,eol,start
set number
set autoindent
set expandtab
set smarttab
set ts=2
set sw=2
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
set background=dark
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
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
" Syntastic debug mode
" let g:syntastic_debug = 3

" FuzzyFinder
nnoremap <F6> :FufFile<CR>

" jshint2
" let jshint2_save = 1 // disable for now

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
"n search for custom folder
map <leader>eb :CtrlP 
" vim-airline
let g:airline#extensions#tabline#enabled = 1

set tags+=./tags

" Tsuquyomi
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_completion_detail = 1
 
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
" set shellcmdflag=-ic " for some reason, it's added for fugitive
set clipboard=unnamedplus

" Remap <Esc> for kinesis 2 keyboard
:imap <S-Space> <Esc>

" YouCompleteMe / YCM
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_autoclose_preview_window_after_completion=1

" Tagbar
let g:tagbar_sort = 0

" cpplint
noremap <buffer> <leader>cp :call Cpplint()<CR>
noremap! <buffer> <leader>cp :call Cpplint()<CR>

" Higlight column #110
" set colorcolumn=110
" highlight ColorColumn ctermbg=darkgray
"
" emmet
let g:user_emmet_leader_key='<C-B>'

" beautify
autocmd FileType html noremap <buffer> <leader>bf :call HtmlBeautify()<cr>

" neoterm
" open terminal
nnoremap <silent> ,to :call neoterm#open()<cr>
" hide / close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

nnoremap <silent> ,o :only<cr>

" fugitive
nnoremap <silent> ,gd :Gdiff<cr>
nnoremap <silent> ,gs :Gstatus<cr>

" Force to syntax highlight Vue file
autocmd FileType vue syntax sync fromstart

" FZF
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <leader>fg :Rg 
nnoremap <silent> <leader>fc :Commits<CR>

inoremap jk <Esc>
inoremap kj <Esc>
inoremap <Esc> <nop>

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
