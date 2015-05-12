set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Allmighty Vundle
Plugin 'gmarik/Vundle'

" Dark colors
Plugin 'nanotech/jellybeans.vim'

" Python
Plugin 'klen/python-mode'

" Haskell
Plugin 'dag/vim2hs'

" Scala
Plugin 'ktvoelker/sbt-vim'
Plugin 'derekwyatt/vim-scala'

" Utilities
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'mattn/webapi-vim'
Plugin 'mnpk/vim-jira-complete'

" Docker
Plugin 'ekalinin/Dockerfile.vim'

" Scala & Gradle
Plugin 'tfnico/vim-gradle'

" Git
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'airblade/vim-gitgutter'


" NERD Stuff
Plugin 'scrooloose/nerdcommenter' 
Plugin 'scrooloose/nerdtree'

" TMUX
Plugin 'christoomey/vim-tmux-navigator'

" Thrift
Plugin 'solarnz/thrift.vim'

" Task
Plugin 'farseer90718/vim-taskwarrior'


call vundle#end()

" Syntax'n'stuff
syntax on
filetype plugin indent on

" Eyecandy
set background=dark
colorscheme jellybeans

" Some basic stuff
set number
set cursorline
set relativenumber
set hidden

" Airline stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set t_Co=256
set laststatus=2
"set rtp+=$HOME/.local/lib/python3.3/site-packages/powerline/bindings/vim/
set noswapfile

"Let me save whe focus is out
au FocusLost * silent! wa

" Window remaps
set noswapfile
set autowriteall

au FocusLost * silent! wa

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-R> <C-w>=

" Ease things out
let mapleader = ","
nnoremap ; :

" Python stuff
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Python stuff
augroup filetype_settings
    au!
    au FileType python
                \   set cc=80
                \ | highlight OverLength ctermbg=red ctermfg=white guibg=#592929
                \ | match OverLength /\%81v.\+/
                \ | map <leader>ii iimport ipdb;ipdb.set_trace()<ESC>
                \ | let g:pymode = 1
                \ | let g:pymode_trim_whitespaces = 1
                \ | let g:pymode_options = 1
                \ | let g:pymode_motion = 1
                \ | let g:pymode_lint = 1
                \ | let g:pymode_lint_on_write = 1
                \ | let g:pymode_lint_signs = 1
                \ | let g:pymode_rope = 1
                \ | let g:pymode_lint_checkers = ['pep257', 'pylint', 'pyflakes', 'pep8', 'mccabe']
augroup END


" Good 'ol search made easy
vmap <leader>a y<esc>:Ag <C-r>"
map <leader>a yiw:Ag <C-r>"

" Git stuff
map <leader>gp :call GitPush()<CR>
map <leader>ga :Gstatus<CR>
map <leader>gv :Gitv<CR>

" Comment fix
map <leader>c<space> <plug>NERDCommenterToggle

" Quickly toggle lines.
nnoremap <F2> :set number!<CR>:set relativenumber!<CR>

" Copy selection
vnoremap <C-c> :w !xclip -sel c<CR><ESC>
nnoremap <C-c> viw :w !xclip -sel c<CR><ESC>

" Edit me!
map <leader>e :tabe $MYVIMRC<CR>

" Buffer nav
map <leader>. :ls<CR>:b 

" Refresh me!
map <leader>rr :so $MYVIMRC<CR>

" Clear window
map <leader>o :only<CR>

map <leader><leader> :q!<CR>

" Also, let me have settings per project
set exrc
set secure

" Pymode on!

let g:airline_powerline_fonts = 1

" taskwarrior
let g:task_report_name     = 'next'
let g:task_highlight_field = 1
let g:task_rc_override     = 'rc.defaultwidth=999'
let g:task_info_vsplit     = 0
let g:task_info_size       = 15
let g:task_info_position   = 'belowright'
let g:task_log_max         = '20'
let g:task_left_arrow      = ' <<'
let g:task_left_arrow      = '>> '
