" Pathogen plugin manager
call pathogen#infect()
set rtp+=$GOROOT/misc/vim

" Hide toolbar
set guioptions-=T

" Enable backspace
set backspace=2

syntax enable

" Syntastic
let g:syntastic_javascript_checkers = ['jshint', 'jscs']

colorscheme xoria256

" Toggle NERDTree with Control-n
nnoremap <C-n> :NERDTreeToggle<CR>

" Disable beep and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Replace :w1 and :w2 common typos with just a write
cabbrev w1 w!
cabbrev w2 w

" Start maximized
au GUIEnter * simalt ~x

" netrw settings
let g:netrw_banner = 0
let g:netrw_keepdir = 0
let g:netrw_liststyle = 1
let g:netrw_sort_options = 'i'

" Revert back to the old regex engine to fix broken plugins
set regexpengine=1

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
set number

" Indent based folding
set foldmethod=indent
set foldlevelstart=99

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
set ts=4 sts=4 sw=4 expandtab

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
set listchars=tab:\|\ 

set autochdir
set nocompatible

" switch to directory of current file
command! CD cd %:p:h

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
