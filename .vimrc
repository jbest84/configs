" Pathogen plugin manager
call pathogen#infect()

" Have operations work with the system clipboard, no need for +
set clipboard=unnamed

set encoding=utf-8
set fileencoding=utf-8
set t_Co=256

let g:NERDTreeStatusline = -1
let g:NERDTreeShowLineNumbers = -1

" Toggle NERDTree with Control-n
map <C-n> :NERDTreeToggle<CR>

" Start maximized
au GUIEnter * simalt ~x

" CoffeeScript Settings
" Recompile .coffee on write
"au BufWritePost *.coffee silent CoffeeMake!
"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" Revert back to the old regex engine to fix broken plugins
set regexpengine=1

syntax enable
" Solarized color scheme
"set background=dark
"colorscheme solarized

colorscheme xoria256

" Set ruler, also setup highlighting of line/column
set ruler
set cursorline
set cursorcolumn

set diffexpr=
if &diff
    set columns=240
endif

" Relative line numbers
set relativenumber
set number

" Fold using markers {{{, }}}
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

" switch to directory of current file
command! CD cd %:p:h

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

nnoremap <F5> :GundoToggle<CR>
