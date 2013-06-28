" Pathogen plugin manager
call pathogen#infect()

set t_Co=256

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    "   " work properly when Vim is used inside tmux and GNU screen.
    "     " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" CoffeeScript Settings
" Recompile .coffee on write
"au BufWritePost *.coffee silent CoffeeMake!
"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

syntax enable
" Solarized color scheme
"set background=dark
"colorscheme solarized

colorscheme xoria256

set ffs=dos,unix

set noshowmode
set laststatus=2

" Set ruler, also setup highlighting of line/column
set ruler
set cursorline
set cursorcolumn

" Diff settings
set diffexpr=
if &diff
    set columns=240
endif

" Relative line numbers
set relativenumber

" Fold using markers {{{, }}}
set foldmethod=marker

" Highlight search results
set hlsearch

" Tabs - tabstop, expandtab, shiftwidth, softtabstop
" tabstop 		- Set tabstop to tell vim how many columns a tab counts for. 
"					Linux kernel code expects each tab to be eight columns wide. 
"					Visual Studio expects each tab to be four columns wide. 
"					This is the only command here that will affect how existing text displays.
" expandtab 	- When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
" shiftwidth 	- Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.
" softtabstop 	- Set softtabstop to control how many columns vim uses when you hit Tab in insert mode.
"					If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing.
"					If softtabstop equals tabstop and expandtab is not set, vim will always use tabs.
"					When expandtab is set, vim will always use the appropriate number of spaces.
set ts=2 sts=4 sw=4 expandtab

" Turn off wordwrap
set nowrap

filetype plugin on
filetype indent on

" Auto indent
set autoindent

" Set backup dir
set backupdir=~/tmp

" Show tab characters, visual whitespace.
set list
set listchars=tab:>.

set autochdir
"set nocompatible

" switch to directory of current file
command! CD cd %:p:h

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
