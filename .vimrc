" ------------------- Vundle config -------------------------------------------
"vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
"Plugin 'tomasr/molokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neosnippet'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/jsbeautify'
"Plugin 'ekevin/jsbeautify'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'slim-template/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dr-chip-vim-scripts/ZoomWin'
"Plugin 'tpope/vim-surround'
"Plugin 'kana/vim-smartinput'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'
Plugin 'marijnh/tern_for_vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'terryma/vim-expand-region'
Plugin 'moll/vim-node'
Plugin 'dyng/ctrlsf.vim'
Plugin 'jimenezrick/vimerl'
"Plugin 'benmills/vimux'
"Plugin 'tpope/vim-fugitive' 
"Plugin 'samsonw/vim-task'

" vim-scripts repos
"Plugin 'FuzzyFinder'
" non github repos
"Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ------------------- Vundle config end --------------------------------------------

"set gfn=Monaco\ for\ Powerline:h12
set gfn=Source\ Code\ Pro:h13

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
"set nowrap
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



" -- NERDTree ------------
let g:NERDTreeWinSize = 28
" 把 F8 Alt+o映射到 启动NERDTree插件
map <F8> :NERDTreeTabsToggle<CR>
"map <M-o> :NERDTreeToggle<CR>
map <M-o> :NERDTreeTabsToggle<CR>
map <D-O> :NERDTreeTabsToggle<CR>
map <leader>o :NERDTreeFind<CR>
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
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
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
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bundle)$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['line', 'funky']
let g:ctrlp_open_new_file = 't'
" Open ctrlp with cmd+p
"let g:ctrlp_map = '<D-p>'
" Open goto file
"nmap <D-p> :CtrlP<cr>
"imap <D-p> <esc>:CtrlP<cr>
" only search in current buffer
map <D-p> :CtrlPBuffer<CR>
imap <D-p> <esc>:CtrlPBuffer<CR>
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

"------------ vim-go ---------------
let g:go_bin_path = expand("~/golang/bin/")
au Filetype go nnoremap <buffer> <leader>i :exe 'GoImport ' . expand('<cword>')<CR>
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>

"------ python indent ----------
au FileType python setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4

"------- vim-easy-align ---------
vnoremap <silent> <Enter> :EasyAlign<cr>

"------- tern_for_vim----------
let g:tern_show_argument_hints = 'yes'
au FileType javascript map <D-i> :TernType<CR>
au FileType javascript map <D-I> :TernDefSplit<CR>


"------------ syntastic -------------
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_args = '--config ~/.jshintrc'
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'

"------------ ctrlsf -------------
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0
map <D-F> :CtrlSF<space>
