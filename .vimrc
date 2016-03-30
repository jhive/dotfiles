set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Color themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'reedes/vim-colors-pencil'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'gmarik/Vundle.vim' "Easy bundle installation

"Syntax highlighting
Plugin 'jelera/vim-javascript-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/groovy.vim'
Plugin 'tfnico/vim-gradle'

Plugin 'bkad/CamelCaseMotion' "Better motions for JS code
Plugin 'scrooloose/syntastic' "JS Hint
Plugin 'scrooloose/nerdtree' "File tree explorer
Plugin 'scrooloose/nerdcommenter' "Quick commenting with <leader>ci
Plugin 'kien/ctrlp.vim' "Use ctrl-p for fuzzy search for files
Plugin 'Valloric/YouCompleteMe' "Autocompletion
Plugin 'marijnh/tern_for_vim' "Parses javascript and provides better autocomplete
Plugin 'millermedeiros/esformatter' "Javascript pretty printer
Plugin 'Yggdroot/indentLine' "Adds thin lines to show indenting
Plugin 'mileszs/ack.vim' "Search files using :Ack
Plugin 'tpope/vim-surround' "Quickly change surrounding characters like '' or {}
Plugin 'Lokaltog/vim-easymotion' "Jump around files quickly with motions
Plugin 'Raimondi/delimitMate' "Adds autocomplete pairs for quotes/brackets
Plugin 'bling/vim-airline' "Adds an info bar at the bottom of vim
Plugin 'Lokaltog/powerline-fonts' "Fonts for airline, better arrows
Plugin 'tpope/vim-fugitive' "Git wrapper support
Plugin 'mbbill/undotree' "Visualize the undo tree in vim
Plugin 'terryma/vim-multiple-cursors' "Multiple cursors, yay! - use ctrl-n
Plugin 'eddking/eclim-vundle'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'dahu/Insertlessly' "Insert whitespace in normal mode!
Plugin 'tpope/vim-repeat' "Lets vim repeat things that it doesn't normally
Plugin 'msanders/snipmate.vim' "Code snippets
Plugin 'garbas/vim-snipmate' "Mocha code snippets
Plugin 'troydm/easybuffer.vim' "Easier buffer switching
" Clojure plugins
Plugin 'guns/vim-clojure-static' "Syntax support
Plugin 'tpope/vim-fireplace' "REPL powers
Plugin 'slimv.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-classpath'

call vundle#end()

" Let VIM do the cool stuff
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Show line numbers
set number
" Limit the number of syntax highlight chars to prevent slow editor
set synmaxcol=512
filetype plugin indent on
" Use AG for search instead of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" YouCompleteMe Tweeks
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:EclimCompletionMethod = 'omnifunc' " Eclim support
set completeopt-=preview

filetype plugin indent on

" Set it to scroll when cursor is near top or bottom
set so=7
" Set it to scroll when cursor is near edgues
set scrolloff=3

" Undotree
nnoremap <leader>ud :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle=1
if has("persistent_undo")
    set undodir='~/.vim/undo'
    set undofile
endif

"Get rid of the damn noises
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"Reset the background color for tmux support
set t_ut=

" Allow switching buffers without saving current buffer
set hidden

" Line wrap
set wrap

" Nerdtree
let NERDTreeQuitOnOpen = 1
nnoremap <leader>nd :NERDTree .<CR>
nnoremap <leader>nf :NERDTreeFind <CR>

" Java Stuff
nnoremap <leader>jf :JUnit %<CR>
nnoremap <leader>ja :JUnit *<CR>

" Better movement for wrapped lines
nmap j gj
nmap k gk

" Improve search a bit
set incsearch
set ignorecase
set smartcase
" File and buffer navigation
nnoremap <leader>ls :ls<CR>:b<SPACE>
nnoremap <leader>ll :EasyBuffer<CR>
nnoremap <leader>tt <C-^>
nnoremap <leader>tk :bp<CR>
nnoremap <leader>tj :bn<CR>
nnoremap <leader>tq :bd<CR>

" Quick escape
inoremap <silent>jj <ESC>

" Powerline settings
"set guifont=Meslo\ LG\ M\ for\ Powerline
"set guifont=Inconsolata\ for\ Powerline
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Making it pretty
set t_co=256
syntax on
set background=dark
set linespace=1
set colorcolumn=80
set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h12
if has('gui_running')
  colorscheme solarized
else
  colorscheme monokai
endif

" Indenting
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

set noswapfile
" CTRL P settings
nnoremap <leader>e :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:paredit_mode = 1
