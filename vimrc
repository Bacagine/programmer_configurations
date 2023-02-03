" This file is configuration of vi/vim editor for programmer's
" 
" .vimrc of user Gustavo Bacagine <gustavo.bacagine@protonmail.com>
" 
" Date: 09/04/2020
" Date of last modification: 12/04/2021

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terroo/terroo-colors'
Plugin 'terroo/vim-simple-emoji'
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'terroo/vim-auto-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

" Inicia o NERDTree automaticamente
"autocmd StdinReadPre * let s:std_in=1
	"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set rtp+=~/.vim/bundle/badwolf
"set rtp+=~/.vim/bundle/terroo-colors
set rtp+=~/.vim/bundle/gruvbox

""""""""""""""""""""""""""""""""""""
" My configurations                "
""""""""""""""""""""""""""""""""""""
" Sets                             "
""""""""""""""""""""""""""""""""""""
set nu!                " 
set autoindent         " 
set smartindent        "
set cursorline
set incsearch          " 
set wildmenu           " 
set laststatus=2       " 
set confirm            " 
set ts=4               " TAB using 4 spaces
set sw=4               " 
"set expandtab          " Transforma o TAB em espaço
set mouse=a            " Habilita o uso do mouse no vim
"set spell spelllang=pt " Aciona corretor automático para Língua Portuguesa
set spell
set nobackup           " 
set nowb               " 
set noswapfile         " 
set encoding=utf-8     " Configure the UTF-8 with default
set undodir=~/.vim/undodir
set encoding=UTF-8
set guifont=DroidSansMonoNerdFontCompleteMono:h12
"set title

""""""""""""""""""""""""""""""""""""
" Maps                             "
""""""""""""""""""""""""""""""""""""
" Exit vim using q key
map q :quit<CR>
" Exit vim without salve the file using Ctrl + q
map <C-q> :q!<CR>
" Salve the file using Ctrl + s
map <C-s> :w<CR>
" Salve the file and exit of vim
map x :x<CR>

" Desabilita as setas do teclado no modo normal
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" Open the NERDTree
map <C-e> :NERDTreeToggle<CR>

" Open a terminal
map <F4> :below terminal<CR>

""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
" Others configurations            "
""""""""""""""""""""""""""""""""""""
"color ron " Cor do editor vim
color badwolf
"color goodwolf
"color terroo-colors
"color gruvbox
"color molokai

" Transparency background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" Line number transparency
autocmd vimenter * hi clear LineNr

hi SpellBad ctermfg=Blue ctermfg=DarkBlue

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

"""""""""""""""""""""""""""""
" Programmer configurations "
"""""""""""""""""""""""""""""
syntax on 

""""""""""""""""""""""
" YCM configurations "
""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_clangd_args=['--header-insertion=never']
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cc', 'cpp', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

"""""""""""""
" Ultilsnips "
"""""""""""""
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

""""""""""""""""
" Indent Lines "
""""""""""""""""
"let g:indentLine_enabled = 1
"map <c-k>i :IndentLinesToggle<cr>

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

"""""""""""""""
" Airline     "
"""""""""""""""
"let g:airline_symbols = {}
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ' i:'
"let g:airline_symbols.maxlinenr = '☰ '
"let g:airline_symbols.dirty='⚡'

