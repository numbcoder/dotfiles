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
 "Bundle 'tomasr/molokai'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'SirVer/ultisnips'
 "Bundle 'Shougo/neocomplcache'
 "Bundle 'Shougo/neosnippet'
 Bundle 'scrooloose/nerdtree'
 Bundle 'jistr/vim-nerdtree-tabs'
 Bundle 'majutsushi/tagbar'
 "Bundle 'vim-scripts/jsbeautify'
 "Bundle 'ekevin/jsbeautify'
 "Bundle 'kchmck/vim-coffee-script'
 Bundle 'jelera/vim-javascript-syntax'
 Bundle 'pangloss/vim-javascript'
 Bundle 'briancollins/vim-jst'
 Bundle 'plasticboy/vim-markdown'
 "Bundle 'tpope/vim-rails'
 "Bundle 'Lokaltog/vim-powerline'
 Bundle 'bling/vim-airline'
 Bundle 'kien/ctrlp.vim'
 Bundle 'tacahiroy/ctrlp-funky'
 Bundle 'othree/html5.vim'
 Bundle 'scrooloose/syntastic'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'hail2u/vim-css3-syntax'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'vim-scripts/ZoomWin'
 "Bundle 'tpope/vim-surround'
 "Bundle 'kana/vim-smartinput'
 Bundle 'Raimondi/delimitMate'
 Bundle 'terryma/vim-multiple-cursors'
 Bundle 'Blackrush/vim-gocode'
 Bundle 'marijnh/tern_for_vim'
 Bundle 'junegunn/vim-easy-align'
 Bundle 'terryma/vim-expand-region'
 Bundle 'moll/vim-node'
 Bundle 'junegunn/goyo.vim'
 Bundle 'dyng/ctrlsf.vim'
 "Bundle 'benmills/vimux'
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
imap <D-s> <esc>:w<cr>
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


" ---------- YouCompleteMe ------
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
"set the preview window on bottom
set splitbelow

" ------- ultisnips ----------------------------
let g:UltiSnipsExpandTrigger       = "<C-l>"
let g:UltiSnipsListSnippets        = "<C-s>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

"------------- Ctrlp -------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log  " MacOSX/Linux
set wildignore+=*/node_modules/*  " node module
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['line', 'funky']
let g:ctrlp_open_new_file = 't'
" Open ctrlp with cmd+p
let g:ctrlp_map = '<D-p>'
" Open goto file
nmap <D-p> :CtrlP<cr>
imap <D-p> <esc>:CtrlP<cr>
" only search in current buffer
map <D-e> :CtrlPLine %<CR>
nnoremap <D-r> :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap @ :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
let g:ctrlp_funky_syntax_highlight = 1
"---- ctrlp -------- end --

"----- airline --------
set laststatus=2
"let g:airline_powerline_fonts=1
"let g:Powerline_symbols = 'fancy'
" disable whitespace check
let g:airline#extensions#whitespace#enabled = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


"----------- tagbar --------
let g:tagbar_width = 28
map <leader>t :TagbarToggle<CR>

"--------- nerdcommenter --------
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

"------ Ack --------
"map <D-F> :Ack<space>

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

"--------- coffee -------------
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"------ golang is special ----------
au FileType go setlocal noexpandtab softtabstop=8 tabstop=8 shiftwidth=8
autocmd FileType go autocmd BufWritePre <buffer> :keepjumps Fmt

"------ python indent ----------
au FileType python setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4

"------- vim-easy-align ---------
vnoremap <silent> <Enter> :EasyAlign<cr>

"------- tern_for_vim----------
au FileType javascript nmap <leader>] :TernDefSplit<CR>
let g:tern_show_argument_hints = 'yes'
au FileType javascript map <C-i> :call tern#LookupArgumentHints()<CR>


"------------ syntastic -------------
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_conf="~/.jshintrc"
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'

"------------ ctrlsf -------------
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0
map <D-F> :CtrlSF<space>
