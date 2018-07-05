"
" vimrc file
"

"-" be iMproved, required
set nocompatible

"-" enable syntax recognition
syntax on
"-" jump to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
              \ exe "normal! g'\"" | endif
endif

"-" show matching brackets.
set showmatch
"-" set background to black
set background=dark
"-" solatized options
source ~/.vim/solarized.vim
set term=xterm-256color
"-" in order to highlight search
set hlsearch
"-" make sure your file format is unix and not dos
setlocal ff=unix
"-" show line number in status bar
set ruler
"-" relative number
set rnu
"-" global number of the current line
set nu
"-" indentation: tabs are at proper location
set tabstop=4
"-" indentation: don't use actual tab character
set expandtab
"-" indentation: indenting is 4 spaces
set shiftwidth=4
"-" indentation: turn on autoindent
set autoindent
"-" indentation: turn on smartindent
set nosmartindent
"-" let vim figure out indentation
filetype indent on
"-" (bash like) tab completion
set wildmode=longest,list
set wildmenu
"-" status line
set statusline=[%n]                     " [buffer number]
set statusline+=\                       " 1 separator
set statusline+=%<%F                    " truncated full path to file
set statusline+=\ \ \                   " 3 separators
set statusline+=[%M%R%H%W%Y]            " filetype + modified
set statusline+=[%{&ff}]                " file formatting (unix)
set statusline+=\ \                     " 2 separators
set statusline+=%=                      " split point for L and R justification
set statusline+=\                       " 1 separator
set statusline+=line:%l/%L              " line: current line / last line
set statusline+=\                       " 1 separator
set statusline+=col:%c                  " column 
set statusline+=\ \ \                   " 3 separators
set statusline+=%p%%                    " percentage: current line / last line
set statusline+=\ \ \                   " 3 separtors
set statusline+=@%{strftime(\"%H:%M\")} " time hh:mm
set laststatus=2
"-" visual line at 80 characters
set colorcolumn=80
"-" set the color column to darkgrey
hi ColorColumn ctermbg=darkgrey


" end of file
