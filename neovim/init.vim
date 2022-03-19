call plug#begin('~/.config/nvim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'

Plug 'mg979/vim-visual-multi'
Plug 'Lokaltog/vim-easymotion'

Plug 'szw/vim-maximizer'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'

Plug 'lfv89/vim-interestingwords'
Plug 'itchyny/vim-cursorword'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-markdown'

call plug#end()


" ------------------------------------------------------------------
" ------------------------------------------------------------------

" colorscheme onedark

"clipboard with OS / To work properly install xclip
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
  set clipboard+=unnamedplus
else
  set clipboard+=unnamedplus
  set clipboard=unnamedplus "Linux
endif

set updatetime=300

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

let mapleader = "\<Space>"

set wildmenu

" highlight current line
" set cursorline cursorcolumn

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible

set nofoldenable                 " disable folding "
set foldmethod=indent            " default fold method = indent."
set confirm                      " prompt when existing from an unsaved file "
set backspace=indent,eol,start   " More powerful backspacing "
set t_Co=256                     " Explicitly tell vim that the terminal has 256 colors
set report=0                     " always report number of lines changed
set nowrap                       " dont wrap lines
set scrolloff=5                  " 5 lines above/below cursor when scrolling
set mouse=a                      " use mouse in all modes"
set number                       " show line numbers
set relativenumber               " show line numbers
set showmatch                    " show matching bracket (briefly jump)
set showcmd                      " show typed command in status bar
set title                        " show file in titlebar
set laststatus=2                 " use 2 lines for the status bar
set matchtime=2                  " show matching bracket for 0.2 seconds

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set smarttab
set expandtab       " expand tab to space

autocmd FileType php,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby,cpp,c,cu,cuda setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5

au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <leader><tab> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <leader><tab> :exe "tabn ".g:lasttab<cr>

let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#nerdtree_statusline = 0  " disabled
let g:airline_section_z = "%p%% ☰ \ue0a1:%l/%L: Col:%c"

" ease-align
vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-visual-multi
let g:VM_theme = "spacegray"
let g:VM_maps = {}
let g:VM_maps["Select Cursor Down"] = '<M-C-Down>'      " start selecting down
let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>'        " start selecting up

" gitgutter
highlight GitGutterAdd    guifg=#009900 ctermfg=1 ctermbg=0
highlight GitGutterChange guifg=#bbbb00 ctermfg=1 ctermbg=0
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 ctermbg=0
highlight clear SignColumn
let g:gitgutter_max_signs=9999

let g:EasyMotion_smartcase = 1
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)

" hightlight current words
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>

" Keybindings for plugin toggle
nnoremap <F8> :set invpaste paste?<CR>
nnoremap <F3> :set wrap! wrap?<cr>
nnoremap <F4> :IndentGuidesToggle<cr>
nnoremap <F5> :TagbarToggle<cr>
nnoremap <F6> :NERDTreeToggle<cr>
nnoremap <F7> :set rnu! rnu?<cr>
set pastetoggle=<F8>

nnoremap <leader>v V`]
nnoremap <leader>q :q<CR>
nnoremap <leader>w :up<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>g :Windows<CR>
nnoremap <leader>r :Rg<CR>
nnoremap U <C-r>

"Reselect visual bolck after indent/outdent.
vnoremap < <gv
vnoremap > >gv
nnoremap ; :
nnoremap : ;
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
nnoremap ^ H
nnoremap $ L
vnoremap ^ H
vnoremap $ L

nnoremap Y yy

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" vim-maximizer
nnoremap <F2> :MaximizerToggle<CR>
vnoremap <F2> :MaximizerToggle<CR>gv
inoremap <F2> <C-o>:MaximizerToggle<CR>

"--------------------------------------------
" 补充
"--------------------------------------------
let g:go_version_warning = 0
let g:syntastic_cpp_compiler_options = ' -std=c++11'        " support c++11

" fzf
" " If installed using Homebrew
" set rtp+=/usr/local/opt/fzf
" " If installed using git
" set rtp+=~/.fzf
"
source ~/.config/nvim/coc_config.vim

" vimdiff
if &diff
    colorscheme apprentice
endif

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

if !has("gui_running")
    set t_Co=256
endif

