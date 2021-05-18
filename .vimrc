" use colors that suit a dark background
set background=dark

" set the window’s title, reflecting the file currently being edited
set title

" enable syntax highlighting
syntax enable

" show relative numbers 
set relativenumber

" show line numbers
set number

" set tabs to have 4 spaces
set tabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" indent when moving to the next line while writing code
set autoindent

" smart indenting
set smartindent

" smart tabbing
set smarttab

" expand tabs into spaces
set expandtab

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable incremental search
set incsearch

" enable search highlighting
set hlsearch

" avoid wrapping a line in the middle of a word
set linebreak

" the number of screen lines to keep above and below the cursor
set scrolloff=1

" the number of screen columns to keep to the left and right of the cursor
set sidescrolloff=5

" enable line wrapping
set wrap

" display command line’s tab complete options as a menu
set wildmenu

" enable spellchecking
set spell

" ignore files matching these patterns when opening files based on a glob pattern
set wildignore+=.pyc,.swp

" increase history size
set history=1000

" shows incomplete commands
set showcmd

" save backup before saving
set backup

" directory to store backup files
set backupdir=~/.cache/vim


" show dialog before closing unsaved file
set confirm

" \p to type print statement
map <leader>p iprint(f"")<esc>hi

" <F6> to quit file
map <F6> :q<cr>

" <F5> to save file
map <F5> :w!<cr>

" <F2> to go to previous buffer
map <F2> :bp<cr>

" <F3> to go to next buffer
map <F3> :bn<cr>


" F9 to run python code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" map Y to act like D and C, i.e. yank until EOL, rather than act like yy
map Y y$

" remap VIM 0 to first non-blank character
map 0 ^
