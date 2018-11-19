" {{sources}}
" http://vim.wikia.com/wiki/Example_vimrc

execute pathogen#infect()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Fortran things
let fortran_more_precise=1
let fortran_free_source=1
let fortran_do_enddo=1


" Enable syntax highlighting
syntax on

" Highlight searches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" highlight matching braces
set showmatch

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Enable use of the mouse for all modes
set mouse=a		

" Display line numbers on the left
set number

" do not keep the backup~ file
set nobackup 

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" move with Ctrl+arrow between split buffers
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

" no ex mode
map q: <Nop>
nnoremap Q <nop>
