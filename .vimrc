
" Colors
set t_Co=256
colorscheme desert256


"indentation & Co
set softtabstop=2 shiftwidth=2 tabstop=2 expandtab
syntax on

" Enable the mouse
set mouse=a
set incsearch

" Substitute all matches on a line by default
set gdefault

" Vim default format options, turn it off...
set textwidth=0

:noremap <F2> :w<CR>
:inoremap <F2> <C-O>:w<CR>
:noremap <F3> :set hlsearch! hlsearch?<CR>
:inoremap <F3> <C-O>:set hlsearch! hlsearch?<CR>
:noremap <F4> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
:inoremap <F4> <C-O>:let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR><C-O>:set hls<CR>
:noremap <F5> :!%<A-UP><CR>
:inoremap <F5> <C-O>:!%<A-UP><CR>
:noremap <F6> :!bash -x %<A-UP><CR>
:inoremap <F6> <C-O>:!bash -x %<A-UP><CR>

:noremap <F9>:set cursorline! cursorline?<CR>
:inoremap <F9> <C-O>:set cursorline! cursorline?<CR>

:noremap <F12> :tab ba<CR>

"Color scheme
:hi CursorLine cterm=NONE ctermbg=17
:set cursorline

filetype on
filetype plugin on
filetype indent on

execute pathogen#infect()
