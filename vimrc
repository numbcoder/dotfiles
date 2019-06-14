set nocompatible

" automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" ======================== Plugins ========================

Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'honza/vim-snippets'
Plug 'neoclide/coc-imselect'


" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'tomasr/molokai'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'iurifq/ctrlp-rails.vim', {'for': 'ruby'}

"Plug 'fisadev/vim-ctrlp-cmdpalette'
"Plug 'tacahiroy/ctrlp-funky'
" Plug 'neomake/neomake'
" Plug 'w0rp/ale'
Plug 'machakann/vim-sandwich'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rsi'
Plug 'sbdchd/neoformat'
"Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
" Plug 'mg979/vim-visual-multi'
" Plug 'altercation/vim-colors-solarized'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'rakr/vim-one'
" Plug 'KeitaNakamura/neodark.vim'
Plug 'joshdick/onedark.vim'
" Plug 'dracula/vim'
" Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Lokaltog/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'haya14busa/incsearch.vim'

Plug 'voldikss/vim-translate-me'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
"Plug 'scrooloose/nerdtree', {'depends': 'jistr/vim-nerdtree-tabs', 'autoload': {'commands':['NERDTreeTabsToggle','NERDTreeToggle','NERDTreeFind']} }
Plug 't9md/vim-choosewin', {'on': 'ChooseWin'}
"Plug 'junegunn/limelight.vim', {'autoload': {'commands': ['Limelight','Limelight!!']}}
Plug 'szw/vim-maximizer', {'on': 'MaximizerToggle'}
Plug 'dyng/ctrlsf.vim', {'on': 'CtrlSF'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'isRuslan/vim-es6', {'for': 'javascript'}
"Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'digitaltoad/vim-pug', {'for': ['pug', 'jade']}
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss','sass']}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby' }
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
" Plug 'fatih/vim-go', {'for': 'go', 'do': ':GoUpdateBinaries'}
" Plug 'jimenezrick/vimerl', {'for': 'erlang'}
" Plug 'edkolev/erlang-motions.vim', {'autoload':{'filetypes':['erlang']}}
" Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
" Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
Plug 'ekalinin/Dockerfile.vim', {'for': 'Dockerfile'}
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'kovisoft/slimv', {'for': ['scheme', 'racket', 'lisp']}
" Plug 'wlangstroth/vim-racket', {'for': ['racket', 'scheme']}
" Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': ['scheme', 'racket', 'lisp']}
" Plug 'bhurlow/vim-parinfer', {'for': ['scheme', 'racket', 'lisp']}
" Plug 'benmills/vimux', {'for': ['scheme', 'racket', 'ruby']}
"Plug 'kana/vim-smartinput'
"Plug 'tpope/vim-fugitive'
"Plug 'samsonw/vim-task'

call plug#end()
" ------------------- Plug config end --------------------------------------------

" support ligatures
"set macligatures
" set guifont=Source\ Code\ Pro:h13
" set guifont=SF\ Mono\ for\ Powerline:h13 | set linespace=1

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
set nowritebackup
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
"enable mouse
set mouse=a
" set popup list count
set pumheight=12
set updatetime=1000
" 自动保存
"au BufLeave,FocusLost * silent! w
" 设置开启语法高亮
syntax on
" default split position
set splitright
set splitbelow

" map leader to space
let mapleader = "\<Space>"
" 按<Leader><space> 取消搜索高亮
nnoremap <silent> <leader>, :nohlsearch<CR>

" go to define in horizontal split
noremap <D-]> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
noremap <C-g> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" map ; to :
nnoremap ; :

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <D-i> <C-w><C-]>

" move to tpope/vim-rsi
" moving aroung in command mode
" cnoremap <C-A> <Home>
" cnoremap <C-F> <Right>
" cnoremap <C-B> <Left>

"Emacs 式快捷键
" inoremap <C-A> <Home>
" inoremap <C-E> <End>
" inoremap <C-F> <Right>
" inoremap <C-B> <Left>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Make Y behave like other capitals
nnoremap Y y$

" 将光标移至行首
nnoremap H ^
" 将光标移至行尾
nnoremap L $

" mac options key to alt
if has("mac")
  nmap ˙ <M-h>
  nmap ∆ <M-j>
  nmap ˚ <M-k>
  nmap ¬ <M-k>
endif

" -- markdown -------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_fenced_languages = ['bash=sh', 'ruby', 'javascript']
let g:vim_markdown_conceal = 0

" -- NERDTree ------------
let g:NERDTreeWinSize = 28
nnoremap <D-O> :NERDTreeToggle<CR>
nnoremap <leader>p :NERDTreeToggle<CR>
nnoremap <leader>o :NERDTreeFind<CR>
"let g:nerdtree_tabs_open_on_gui_startup = 0
" -- NERDTree end ------------

" 把 CTRL-S 映射为 保存
inoremap <C-S> <C-C>:w<CR>
inoremap <D-s> <esc>:w<cr>
noremap :W :w<CR>
"imap jj <ESC>
nnoremap ^T :tabnew .<CR>
nnoremap <D-j> :tabprevious<CR>
nnoremap <D-k> :tabnext<CR>
nnoremap <D-S-{> :tabprevious<CR>
nnoremap <D-S-}> :tabnext<CR>

" ------------- indentLine -------------
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" ------------- fzf -------------
" ------------- fzf end -------------

"------------- LeaderF  -------------
let g:Lf_ShortcutF = '<C-p>'
nnoremap <D-p> :LeaderfFile<CR>
let g:Lf_ReverseOrder = 1
let g:Lf_WindowHeight = 0.3
let g:Lf_StlColorscheme = 'one'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_CommandMap = {'<C-X>': ['<C-S>'], '<C-]>': ['<C-V>'], '<C-K>': ['<C-K>', '<Up>'], '<C-J>': ['<C-J>', '<Down>']}
let g:Lf_ExternalCommand = 'fd --type f --color=never "" %s'
"------------- LeaderF end  -------------

"------------- Ctrlp -------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.beam  " MacOSX/Linux
set wildignore+=*/node_modules/*,*/vendor/*  " node module
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['line', 'buffertag']
let g:ctrlp_open_new_file = 't'
let g:ctrlp_clear_cache_on_exit=1
" enable cache
let g:ctrlp_use_caching = 1
if executable('fd')
  let g:ctrlp_user_command = 'fd --type f --color=never "" %s'
endif
if executable('rg')
  " let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  " Use rg over Grep
  set grepprg=rg\ --vimgrep\ --no-heading\ --color=never
  " set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
" Open ctrlp with cmd+p
" nnoremap <D-p> :CtrlP<CR>
" clear cache and open ctrlp
" nnoremap <silent> <leader>p :ClearCtrlPCache<CR>\|:CtrlP<CR>
" only search in current buffer
" nnoremap <D-b> :CtrlPBuffer<CR>
" nnoremap <Leader>b :CtrlPBuffer<CR>
" nnoremap <D-e> :CtrlPLine %<CR>
" nnoremap <D-r> :CtrlPBufTag<Cr>
let g:ctrlp_match_func = {'match': 'pymatcher#PyMatch'}
" let g:fruzzy#usenative = 1
" let g:ctrlp_match_func = {'match': 'fruzzy#ctrlp#matcher'}
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" narrow the list down with a word under cursor
"nnoremap @ :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
"let g:ctrlp_funky_syntax_highlight = 1
"---- ctrlp-rails --------
" nnoremap <Leader>rm :CtrlPModels<CR>
" nnoremap <Leader>rc :CtrlPControllers<CR>
" nnoremap <Leader>rv ::CtrlPViews<CR>
" nnoremap <Leader>rd :CtrlPMigrations<CR>

"------------- Limelight ----------
" Default: 0.5
"let g:limelight_default_coefficient = 0.7
" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1
" nnoremap <Leader>l :Limelight!!<CR>

"----- airline --------
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 0
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab
let g:airline_powerline_fonts = 1
" disable whitespace check
let g:airline#extensions#whitespace#enabled = 0
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

"----------- vim-maximizer --------
let g:maximizer_default_mapping_key = '<c-w>o'
nnoremap <C-w>o :MaximizerToggle<CR>

"----------- tagbar ---------------
let g:tagbar_width = 28
nnoremap <leader>t :TagbarToggle<CR>

"--------- commentary --------
nmap <D-/> gcc<CR>
vmap <D-/> gc
imap <D-/> <Esc>gcc<CR>

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
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader><leader> <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

"------ Ack --------
"map <D-F> :Ack<space>

"------ gitgutter --------
let g:gitgutter_map_keys = 0

filetype plugin on

" fix ture color for tmux
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
set termguicolors

syntax enable

" let g:gruvbox_contrast_dark="hard"
" let g:one_allow_italics = 1

" colorscheme dracula
" colorscheme one
colorscheme onedark
" colorscheme neodark
set background=dark

"自动切换工作目录
"set autochdir

"高亮所在行、列
"set cursorline
"set cursorcolumn

"--------- rust -------------
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'

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

"------- json ----------
let g:vim_json_syntax_conceal = 2

" neoformat =========================================================== {{{
nnoremap <leader>ff :Neoformat <cr>
let g:neoformat_ruby_rubocopx = {
      \ 'exe': 'rubocop',
      \ 'args': ['--safe-auto-correct', '--stdin', '"%:p"', '2>/dev/null', '|', 'sed "1,/^====================$/d"'],
      \ 'stdin': 1,
      \ 'stderr': 1
      \ }
let g:neoformat_enabled_ruby = ['rubocopx']
let g:neoformat_enabled_javascript = ['standard']
" auto save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
" }}}

" ale =========================================================== {{{
"let g:airline#extensions#ale#enabled = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_save = 1
""sign: ✗ ∆ ☭ 卐 ❂ ¤ ◆ ◇
"" let g:ale_sign_error = '✗'
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '•'
"" highlight ALEErrorSign guibg=NONE guifg=red
"" highlight ALEWarningSign guibg=NONE guifg=yellow
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_linters = {
"      \   'javascript': ['standard'],
"      \   'ruby': ['rubocop'],
"      \}
"let g:ale_fixers = {
"      \   'javascript': ['standard'],
"      \   'ruby': ['rubocop'],
"      \}
"" let g:ale_fix_on_save = 1
" }}}

" Neomake =========================================================== {{{
let g:neomake_error_sign   = {'text': '✗', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '▵', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '!', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': '●', 'texthl': 'NeomakeInfoSign'}
let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_ruby_enabled_makers = []
let g:neomake_rust_enabled_makers = ['rustc', 'clippy']
let g:neomake_python_enabled_makers = ['pep8']
let g:neomake_vim_makers=['vimlint']
let g:neomake_virtualtext_current_error = 0
" When writing a buffer (no delay), and reading a buffer (after 1s) and on normal mode changes (after 1000ms).
" call neomake#configure#automake('nrw', 1000)
" }}}

" incsearch =========================================================== {{{
let g:incsearch#auto_nohlsearch = 1
nmap /  <Plug>(incsearch-forward)
nmap ?  <Plug>(incsearch-backward)
nmap g/ <Plug>(incsearch-stay)
nmap n  <Plug>(incsearch-nohl-n)
nmap N  <Plug>(incsearch-nohl-N)
" }}}

"------------ ctrlsf -------------
let g:ctrlsf_ackprg = 'rg'
let g:ctrlsf_auto_close = 0
nnoremap <leader>fs :CtrlSF<space>

"------------ rainbow -------------
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
augroup rainbow_group
  autocmd!
  autocmd FileType javascript,css,scheme,racket,rust RainbowParentheses
augroup END

" ChooseWin ============================================================= {{{
"nmap m <Plug>(choosewin)
nnoremap m :ChooseWin<CR>
nnoremap <leader>m :ChooseWinSwap<CR>

" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1
let g:choosewin_blink_on_land = 0
"}}}



" coc ============================================================= {{{
" if hidden not set, TextEdit might fail.
set hidden

" Better display for messages
" set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Use <C-x><C-o> to complete 'word', 'emoji' and 'include' sources
imap <silent> <C-x><C-o> <Plug>(coc-complete-custom)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:coc_global_extensions = [
      \ 'coc-word',
      \ 'coc-snippets',
      \ 'coc-rls',
      \ 'coc-json',
      \ 'coc-solargraph',
      \ 'coc-tsserver',
      \ 'coc-pairs',
      \ 'coc-lists',
      \ ]
"}}}
