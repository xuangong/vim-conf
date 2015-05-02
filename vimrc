"basic
syntax enable
set nocompatible
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set number
set showmatch
set mouse=a
set ruler
set showcmd
set incsearch
set hlsearch
set sidescroll=1
set whichwrap=b,s,<,>,[,]
set foldmethod=marker
set cursorline
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'

Bundle 'taglist.vim'
Bundle 'L9'
Bundle 'ctrlp.vim'
Bundle 'vim-coffee-script'

Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-scripts/Align'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'airblade/vim-gitgutter'
Bundle 'bufexplorer.zip'

filetype plugin indent on

"solarized
set t_Co=16
" set background=dark

" let g:solarized_termtrans = 1
" colorscheme solarized

"powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"markdown-mode
let g:vim_markdown_folding_disabled=1

"keymap
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader>c :only<CR>
" nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>k <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
" backspace to toggle commentary
nmap <BS> gcc
vmap <BS> gc"

noremap <silent> <CR> :BufExplorer<CR>
" EasyMotion: <leader><leader><char>
let g:EasyMotion_leader_key = 'f'"

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

let g:indentLine_first_char = '┆'

let g:user_emmet_settings = {
    \  'indentation' : '    ',
    \  'perl' : {
    \    'aliases' : {
    \      'req' : 'require '
    \    },
    \    'snippets' : {
    \      'use' : "use strict\nuse warnings\n\n",
    \      'warn' : "warn \"|\";",
    \    }
    \  }
    \}

let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1"

" indent
au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g'\"" |
    \ endif

let g:indentLine_char='|'
let g:indentLine_first_char='|'

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
    \ ['darkgreen',   'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
