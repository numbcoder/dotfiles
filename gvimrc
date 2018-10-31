" set transparency=5

"去除工具栏
set guioptions-=T
"去除菜单栏
set guioptions-=m
"去除左边滚动条
set guioptions-=L
"去除右边滚动条
set guioptions-=r

" set guioptions+=k

" support ligatures
"set macligatures
set guifont=SF\ Mono\ for\ Powerline:h13 | set linespace=1

" Disable print shortcut for 'goto anything...'
macmenu File.Print key=<nop>
" Disable command + b
macmenu Tools.Make key=<nop>
"colorscheme gruvbox
"let g:gruvbox_contrast_dark='hard'
"enable mouse in macvim
set mouse=a

" Disable tabline
let g:airline#extensions#tabline#enabled = 0
