" set transparency=5

"去除工具栏
set guioptions-=T
"去除菜单栏
set guioptions-=m
"去除左边滚动条
set guioptions-=L
"去除右边滚动条
set guioptions-=r
" remove native tabline
set guioptions-=e

" set guioptions+=k

" support ligatures
set macligatures
" set guifont=SF\ Mono:h13 | set linespace=2
set guifont=SFMono\ Nerd\ Font:h13 | set linespace=2
" set guifont=Fira\ Code:h14 | set linespace=2

" Disable print shortcut for 'goto anything...'
macmenu File.Print key=<nop>
" Disable command + b
macmenu Tools.Make key=<nop>
"colorscheme gruvbox
"let g:gruvbox_contrast_dark='hard'
"enable mouse in macvim
set mouse=a

" Disable tabline
" let g:airline#extensions#tabline#enabled = 0
