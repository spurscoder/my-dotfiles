set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
" Bundle 'Shougo/neocomplete'
"Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'junegunn/vim-easy-align'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'terryma/vim-multiple-cursors'
Bundle 'mg979/vim-visual-multi'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'szw/vim-maximizer'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
" curl https://beyondgrep.com/ack-2.22-single-file > /ssd1/exec/wangjp/tools/bin/ack && chmod 0755 /ssd1/exec/wangjp/tools/bin/ack
" brew install ack
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
"FixWhitespace
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'airblade/vim-gitgutter'
Bundle 'lfv89/vim-interestingwords'
Bundle 'itchyny/vim-cursorword'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- markup language -------
Bundle 'tpope/vim-markdown'

"--------------
" Color Schemes
"--------------
" Bundle 'rickharris/vim-blackboard'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'rickharris/vim-monokai'
" Bundle 'tpope/vim-vividchalk'
" Bundle 'Lokaltog/vim-distinguished'
" Bundle 'chriskempson/vim-tomorrow-theme'
" Bundle 'fisadev/fisa-vim-colorscheme'

filetype plugin indent on     " required!
