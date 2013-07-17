set gfn=Monaco\ for\ Powerline:h12.5

"for linux gvim
"set guifont=Monaco\ 11
" set guifont=Consolas\ 13
 " set guifontwide=WenQuanYi\ Zen\ Hei:h12:cGBK
 " 设定文件浏览器目录为当前目录
 set bsdir=buffer
 " 设置编码
 set encoding=utf-8
 " 设置文件编码
 set fenc=utf-8
 " 设置文件编码检测类型及支持格式
 set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
 "显示行号
 set number
 " 查找结果高亮度显示
 set hlsearch
 " 不自动换行(否：wrap)
 set nowrap
 " 缺省不产生备份文件
 set nobackup
 " 不要生成swap文件，当buffer被丢弃的时候隐藏它
 setlocal noswapfile
 set noswapfile
 "在输入命令时列出匹配项目
 set wildmenu
 "开启右下角光标位置显示
 set ruler
 "设定光标离窗口上下边界 5 行时窗口自动滚动
 set scrolloff=5
 "tab宽度
 set tabstop=2
 set expandtab
 set cindent shiftwidth=2
 set autoindent shiftwidth=2
 "开启抗锯齿
 set antialias
 "use mouse when possible
 set mouse=a
 " set popup list count
 set pumheight=12
 " 自动保存
 "au BufLeave,FocusLost * silent! w
 " 设置开启语法高亮
 syntax on
 set switchbuf=usetab,newtab     " open new buffers always in new tabs

 " 按<Leader><space> 取消搜索高亮
 nmap <silent> <leader><space> :nohlsearch<CR>
 
 "Emacs 式快捷键
 inoremap <C-A> <Home>
 inoremap <C-E> <End>
 inoremap <C-F> <Right>
 inoremap <C-B> <Left>

" ------------------- Vundle config -------------------------------------------
 "vundle
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tomasr/molokai'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'SirVer/ultisnips'
 "Bundle 'Shougo/neocomplcache'
 "Bundle 'Shougo/neosnippet'
 Bundle 'scrooloose/nerdtree'
 Bundle 'jistr/vim-nerdtree-tabs'
 Bundle 'majutsushi/tagbar'
 "Bundle 'vim-scripts/jsbeautify'
 Bundle 'ekevin/jsbeautify'
 Bundle 'kchmck/vim-coffee-script'
 Bundle 'jelera/vim-javascript-syntax'
 Bundle 'pangloss/vim-javascript'
 Bundle 'tpope/vim-markdown'
 "Bundle 'tpope/vim-rails'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'kien/ctrlp.vim'
 Bundle 'othree/html5.vim'
 Bundle 'scrooloose/syntastic'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'hail2u/vim-css3-syntax'
 "Bundle 'mileszs/ack.vim'
 Bundle 'rking/ag.vim'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'vim-scripts/ZoomWin'
 "Bundle 'tpope/vim-surround'
 "Bundle 'kana/vim-smartinput'
 Bundle 'Raimondi/delimitMate'
 "Bundle 'marijnh/tern_for_vim'
 "Bundle 'jpalardy/vim-slime'
 "Bundle 'tpope/vim-fugitive'
 "Bundle 'samsonw/vim-task'

 " vim-scripts repos
 "Bundle 'FuzzyFinder'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'

 filetype plugin indent on     " required! 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 " ------------------- Vundle config end --------------------------------------------
 
 " -- NERDTree ------------
 let g:NERDTreeWinSize = 28
" 把 F8 Alt+o映射到 启动NERDTree插件
 map <F8> :NERDTreeTabsToggle<CR>
 "map <M-o> :NERDTreeToggle<CR>
 map <M-o> :NERDTreeTabsToggle<CR>
 map <D-O> :NERDTreeTabsToggle<CR>
 let g:nerdtree_tabs_open_on_gui_startup = 0
 " -- NERDTree end ------------

" 把 CTRL-S 映射为 保存
 imap <C-S> <C-C>:w<CR>
 map :W :w<CR>
 map <M-s> :w<CR>
 "imap jj <ESC>
"my configure,F3 F4 switch the tablabel
map ^T :tabnew .<CR>
"map <F3> :tabprevious<CR>
map <M-j> :tabprevious<CR>
map <D-j> :tabprevious<CR>
map <M-1> :tabprevious<CR>
map <M-k> :tabnext<CR>
map <D-k> :tabnext<CR>
map <M-2> :tabnext<CR>
map <M-t> :tabnew<CR>
"映射F6执行ruby文件
map <F6> :!ruby %<CR>
"映射F7执行nodeJS文件
map <F7> :!node %<CR>


"--- neocomplcache. ----------- 

let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
"let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Enable omni completion. 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 
" Enable heavy omni completion. 
if !exists('g:neocomplcache_omni_patterns') 
	let g:neocomplcache_omni_patterns = {} 
endif 
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::' 
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" <CR>: close popup and save indent.
 "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion. 
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<C-j>" 
"inoremap <expr><C-k>  pumvisible() ? "\<C-p>" : "\<C-k>"
" for snippets
" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"imap <C-l>  <Plug>(neocomplcache_snippets_force_jump)
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
"let g:neocomplcache_max_list = 12

" --- neocomplcache end -------

" ---------- YouCompleteMe ------
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>']

" ------- ultisnips
let g:UltiSnipsExpandTrigger       = "<C-l>"
let g:UltiSnipsListSnippets        = "<C-s>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

"------------- Ctrlp -------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
set wildignore+=*/node_modules/*  " node module 
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['buffertag']
let g:ctrlp_open_new_file = 't'
" Open ctrlp with cmd+p
let g:ctrlp_map = '<D-p>'
" Open goto file
nmap <D-p> :CtrlP<cr>
imap <D-p> <esc>:CtrlP<cr>
map <D-r> :CtrlPMRU<CR>
map <D-e> :CtrlPBuffer<CR>
"---- ctrlp -------- end --

"----- powerline --------
set laststatus=2
let g:Powerline_symbols = 'fancy'

"----------- tagbar --------
let g:tagbar_width = 28
map <leader>t :TagbarToggle<CR>

"--------- nerdcommenter --------
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

"------ Ack --------
map <D-F> :Ack<space>

:filetype plugin on
"colorscheme molokai
set term=xterm-256color
set t_Co=256

syntax enable

colorscheme solarized
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_hitrail=1

"自动切换工作目录
"set autochdir

"高亮所在行、列
"set cursorline
"set cursorcolumn

"----------- coffee -------------
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"------------ syntastic -------------
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_conf="~/.jshintrc"
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'

