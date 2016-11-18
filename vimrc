set nocompatible

" automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" ======================== Plugins ========================
"Plug 'Shougo/neocomplete.vim'
"Plug 'Shougo/neosnippet'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --tern-completer --gocode-completer'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'tomasr/molokai'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'JazzCore/ctrlp-cmatcher',
Plug 'nixprime/cpsm', {'do': './install.sh'}

"Plug 'fisadev/vim-ctrlp-cmdpalette'
"Plug 'tacahiroy/ctrlp-funky'
" Plug 'scrooloose/syntastic'
"Plug 'w0rp/ale'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
"Plug 'Raimondi/delimitMate'
Plug 'cohama/lexima.vim'
"Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
"Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Lokaltog/vim-easymotion'
Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
"Plug 'scrooloose/nerdtree', {'depends': 'jistr/vim-nerdtree-tabs', 'autoload': {'commands':['NERDTreeTabsToggle','NERDTreeToggle','NERDTreeFind']} }
Plug 't9md/vim-choosewin', {'on': 'ChooseWin'}
"Plug 'junegunn/limelight.vim', {'autoload': {'commands': ['Limelight','Limelight!!']}}
Plug 'szw/vim-maximizer', {'on': 'MaximizerToggle'}
Plug 'dyng/ctrlsf.vim', {'on': 'CtrlSF'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'isRuslan/vim-es6', {'for': 'javascript'}
"Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx', 'jsx']}
" Plug 'marijnh/tern_for_vim', {'autoload':{'filetypes':['javascript']}}
" Plug 'moll/vim-node', {'autoload':{'filetypes':['javascript']}}
Plug 'digitaltoad/vim-pug', {'for': ['pug', 'jade']}
Plug 'briancollins/vim-jst', {'for': ['ejs', 'jst']}
Plug 'slim-template/vim-slim', {'for': 'slim'}
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss','sass']}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby' }
Plug 'iurifq/ctrlp-rails.vim', {'for': 'ruby'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'jimenezrick/vimerl', {'for': 'erlang'}
"Plug 'edkolev/erlang-motions.vim', {'autoload':{'filetypes':['erlang']}}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'ekalinin/Dockerfile.vim', {'for': 'Dockerfile'}
"Plug 'xolox/vim-lua-ftplugin', {'depends': 'xolox/vim-misc', 'autoload':{'filetypes':['lua']}}
"Plug 'dantezhu/lua_indent', {'autoload':{'filetypes':['lua']}}
" Plug 'luochen1990/rainbow', {'for': ['scheme', 'ruby', 'css', 'html', 'javascript']}
Plug 'junegunn/rainbow_parentheses.vim', {'for': ['scheme', 'ruby', 'css', 'html', 'javascript']}
"Plug 'kovisoft/slimv', {'autoload':{'filetypes':['scheme', 'lisp']}}
Plug 'tpope/vim-surround'
"Plug 'kana/vim-smartinput'
"Plug 'benmills/vimux'
"Plug 'tpope/vim-fugitive'
"Plug 'samsonw/vim-task'

call plug#end()
" ------------------- Plug config end --------------------------------------------

" support ligatures
"set macligatures
" set guifont=Source\ Code\ Pro:h13
set guifont=SF\ Mono\ for\ Powerline:h13 | set linespace=1

"for linux gvim
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
" set relativenumber
" 查找结果高亮度显示
set hlsearch
" show search matches as you type
set incsearch
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
"disable mouse in terminal
set mouse-=a
" set popup list count
set pumheight=12
" 自动保存
"au BufLeave,FocusLost * silent! w
" 设置开启语法高亮
syntax on
" map leader to space
let mapleader = "\<Space>"
" 按<Leader><space> 取消搜索高亮
nmap <silent> <leader>, :nohlsearch<CR>

"open define in horizontal split
"map <D-]> :sp <CR>:exec("tag ".expand("<cword>"))<CR>

" map ; to :
nnoremap ; :

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <D-i> <C-w><C-]>

" moving aroung in command mode
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

"Emacs 式快捷键
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-B> <Left>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Make Y behave like other capitals
nnoremap Y y$

" 将光标移至行首
noremap H ^
" 将光标移至行尾
noremap L $

" markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_fenced_languages = ['bash=sh', 'ruby', 'javascript']
let g:vim_markdown_conceal = 0


" -- NERDTree ------------
let g:NERDTreeWinSize = 28
let NERDTreeIgnore=['\.beam$']
" 把 F8 Alt+o映射到 启动NERDTree插件
"nmap <F8> :NERDTreeTabsToggle<CR>
"map <M-o> :NERDTreeToggle<CR>
"nmap <M-o> :NERDTreeTabsToggle<CR>
"nmap <D-O> :NERDTreeTabsToggle<CR>
nmap <D-O> :NERDTreeToggle<CR>
nmap <leader>o :NERDTreeFind<CR>
"let g:nerdtree_tabs_open_on_gui_startup = 0
" -- NERDTree end ------------

" 把 CTRL-S 映射为 保存
imap <C-S> <C-C>:w<CR>
imap <D-s> <esc>:w<cr>
map :W :w<CR>
map <M-s> :w<CR>
"imap jj <ESC>
"my configure,F3 F4 switch the tablabel
nnoremap ^T :tabnew .<CR>
"nnoremap <F3> :tabprevious<CR>
nnoremap <M-j> :tabprevious<CR>
nnoremap <D-j> :tabprevious<CR>
nnoremap <M-1> :tabprevious<CR>
nnoremap <M-k> :tabnext<CR>
nnoremap <D-k> :tabnext<CR>
nnoremap <M-2> :tabnext<CR>
nnoremap <M-t> :tabnew<CR>
"映射F6执行ruby文件
nnoremap <F6> :!ruby %<CR>
"映射F7执行nodeJS文件
nnoremap <F7> :!node %<CR>

"------------- Ctrlp -------------
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.beam  " MacOSX/Linux
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.beam  " MacOSX/Linux
set wildignore+=*/node_modules/*  " node module
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$' }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['line', 'buffertag']
let g:ctrlp_open_new_file = 't'
let g:ctrlp_clear_cache_on_exit=1
" disable caching when file count < 100
let g:ctrlp_use_caching = 100
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif
" Open ctrlp with cmd+p
"let g:ctrlp_map = '<D-p>'
" Open goto file
"nmap <D-p> :CtrlP<cr>
"imap <D-p> <esc>:CtrlP<cr>
nmap <D-p> :CtrlP<CR>
nmap <Leader>p :CtrlP<CR>
" only search in current buffer
nmap <D-b> :CtrlPBuffer<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nmap <D-e> :CtrlPLine %<CR>
nnoremap <D-r> :CtrlPBufTag<Cr>
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
" narrow the list down with a word under cursor
"nnoremap @ :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
"let g:ctrlp_funky_syntax_highlight = 1
autocmd VimEnter * ClearCtrlPCache
nmap <F5> :ClearCtrlPCache<CR>
"---- ctrlp-rails --------
nmap <Leader>rm :CtrlPModels<CR>
nmap <Leader>rc :CtrlPControllers<CR>
nmap <Leader>rv ::CtrlPViews<CR>
nmap <Leader>rd :CtrlPMigrations<CR>

"------------- Limelight ----------
" Default: 0.5
"let g:limelight_default_coefficient = 0.7
" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1
nmap <Leader>l :Limelight!!<CR>

"----- airline --------
set laststatus=2
let g:airline_powerline_fonts = 1
" disable whitespace check
let g:airline#extensions#whitespace#enabled = 0

"------------ if powerline font not soupport ----------
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" " unicode symbols
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

"----------- vim-maximizer --------
let g:maximizer_default_mapping_key = '<c-w>o'
nnoremap <C-w>o :MaximizerToggle<CR>

"----------- tagbar ---------------
let g:tagbar_width = 28
nnoremap <leader>t :TagbarToggle<CR>

"--------- nerdcommenter --------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
map <D-/> <plug>NERDCommenterToggle<CR>
map <leader>/ <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>

"------ easy-motion --------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
"map <Leader> <Plug>(easymotion-prefix)
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)
nmap <Leader>w <Plug>(easymotion-w)
nmap <Leader>s <Plug>(easymotion-sn)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader><leader> <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"------ Ack --------
"map <D-F> :Ack<space>

"------ gitgutter --------
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0


filetype plugin on
set term=xterm-256color
set t_Co=256
" true color support
if (has("termguicolors"))
  set termguicolors
endif
" fix ture color for tmux
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

syntax enable

let g:gruvbox_contrast_dark="hard"
" let g:one_allow_italics = 1

"colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_hitrail=1

set background=dark
"colorscheme gruvbox
" colorscheme PaperColor
colorscheme one



"自动切换工作目录
"set autochdir

"高亮所在行、列
"set cursorline
"set cursorcolumn

"--------- coffee -------------
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"------ golang is special ----------
au FileType go setlocal noexpandtab softtabstop=4 tabstop=4 shiftwidth=4

"------------ vim-go ---------------
let g:go_bin_path = expand("~/golang/bin/")
au FileType go nmap <D-i> <Plug>(go-def-split)
au FileType go nmap <D-I> <Plug>(go-def-vertical)
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
" keyword highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"------ python indent ----------
au FileType python setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4

"------ erlang indent ----------
au FileType erlang setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4
au FileType erlang nnoremap <buffer> <D-i> :call VimErlangTagsSelect(1)<cr><c-]>

"------- vim-easy-align ---------
vnoremap <silent> <Enter> :EasyAlign<cr>

"------- tern_for_vim----------
"let g:tern_show_argument_hints = 'yes'
"au FileType javascript map <D-i> :TernType<CR>
"au FileType javascript map <D-I> :TernDefSplit<CR>

"------- json ----------
let g:vim_json_syntax_conceal = 2

"------------ ale -------------
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '∆'
" let g:ale_linters = {
"       \   'javascript': ['eslint'],
"       \   'ruby': ['rubocop'],
"       \}

" Neomake =========================================================== {{{
let g:neomake_error_sign   = {'text': '✗', 'texthl': 'ErrorMsg'}
let g:neomake_warning_sign = {'text': '▵', 'texthl': 'MoreMsg'}
let g:neomake_message_sign = {'text': '!', 'texthl': 'MoreMsg'}
let g:neomake_info_sign    = {'text': '●', 'texthl': 'MoreMsg'}
let g:neomake_verbose = 0
let g:neomake_serialize = 1
let g:neomake_javascript_enabled_checkers = ['eslint']
let g:neomake_ruby_enabled_checkers = ['rubocop']
let g:neomake_vim_checkers=['vimlint']
autocmd! BufWritePost * Neomake
" }}}

"------------ syntastic -------------
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'

"------------ ctrlsf -------------
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0
map <D-F> :CtrlSF<space>

"------------ rainbow -------------
" let g:rainbow_active = 1
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType ruby,javascript,css,scheme RainbowParentheses

" ChooseWin ============================================================= {{{
"nmap m <Plug>(choosewin)
nmap m :ChooseWin<CR>
nmap <leader>m :ChooseWinSwap<CR>

" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1
let g:choosewin_blink_on_land = 0
"}}}

" YouCompleteMe ============================================================= {{{
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"set the preview window on bottom
set splitbelow
" for erlang omnicomplete
let g:erlang_completion_cache = 0
au FileType erlang let g:ycm_cache_omnifunc = 0
"}}}

" UltiSnips ============================================================= {{{
let g:UltiSnipsExpandTrigger       = "<C-l>"
let g:UltiSnipsListSnippets        = "<C-s>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
"}}}

