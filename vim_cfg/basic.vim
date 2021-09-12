" Turn on syntax highlighting.
syntax on
filetype plugin indent on

" Show matching braces when text indicator is over them"
set showmatch

" Disable the default Vim startup message.
set shortmess+=I

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" vim can autodetect this based on $TERM (e.g. 'xterm-256color')
" but it can be set to force 256 colors
" set t_Co=256
if has('gui_running')
    colorscheme solarized
    let g:lightline = {'colorscheme': 'solarized'}
elseif &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    set background=dark
    let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:lightline = {'colorscheme': 'dark'}
    highlight SpellBad cterm=underline
    " patches
    highlight CursorLineNr cterm=NONE
endif

filetype plugin indent on " enable file type detection
set autoindent

"--------------
" Basic editing config
" --------------------

" Disable startup message "
set shortmess+=I
" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Highlight search "
set hls

" Set list to see tabs and non-breakable spaces "
set listchars=tab:>>,nbsp:~

" Line break "
set lbr

" Show lines above and below cursor (when possible)
set scrolloff=5

" hide mode "
set noshowmode

" Fix slow 0 inserts "
set timeout timeoutlen=1000 ttimeoutlen=100

" Skip redrawing screen in some cases"
set lazyredraw

" Automatically set current directory to directory of last opened file "
set autochdir

set tags=./tags,tags;$HOME

set cscoperelative

" More history "
set history=8192

" Suppress inserting two spaces between sentences "
set nojoinspaces

" Use 8 spaces instead of tabs during formatting "
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
" Set number of columns in on vim page
set colorcolumn=80
set tw=80

"set cindent autocmd BufWritePre * %s/\s\+$//e

" Tab completion for files/buffers"
set wildmode=longest,list
set wildmenu
" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Syntax highlight
let g:markdown_fenced_languages = [
        \'bash=sh',
        \'asm',
        \'c',
        \'coffee',
        \'erb=eruby',
        \'javascript',
        \'json',
        \'perl',
        \'python',
        \'ruby',
        \'yaml',
        \'go',
        \'racket',
\]
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1

