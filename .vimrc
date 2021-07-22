set rtp+=~/.local/share/nvim/site/autoload/plug.vim
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()

" TAB size is 4 spaces. Always replace TAB with spaces.
set tabstop=4
set softtabstop=0   " 0 == when backspacing, delete by spaces, not by tabs
set shiftwidth=4
set expandtab

set nobackup
set nowritebackup
set noswapfile
set sessionoptions-=options
set display+=lastline

set timeoutlen=1000 ttimeoutlen=0
set mouse=a


set clipboard=unnamed,unnamedplus

if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set incsearch

" turn on line-numbers
set number

" Make the 80th column visible
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" create bigger history
if &history < 1000
    set history=1000
endif

" choose theme
syntax enable
colorscheme dracula

" change colors for bg and for comments
highlight Normal ctermbg=233
highlight Comment ctermfg=240

" color for line-numbers
highlight LineNr ctermfg=210

" ctrl + s - delete all whitespaces from the end of lines
nnoremap <C-s> :%s/\s*$//<CR><C-L>

no <up> ddkP
no <down> ddp
no <right> xp
no <left> xhP
