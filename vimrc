set nocompatible

" automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" ======================== Plugins ========================
let complete_engin = 'coc'

if complete_engin ==# 'coc'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
endif

if complete_engin ==# 'ncm2'
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  " list of sources: https://github.com/ncm2/ncm2/wiki
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-ultisnips'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'filipekiss/ncm2-look.vim'
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
end

if complete_engin ==# 'deoplete'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
	Plug 'ujihisa/neco-look'
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
  Plug 'zchee/deoplete-go', {'do': 'make'}
endif

" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'tomasr/molokai'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'iurifq/ctrlp-rails.vim', {'for': 'ruby'}

"Plug 'fisadev/vim-ctrlp-cmdpalette'
"Plug 'tacahiroy/ctrlp-funky'
Plug 'neomake/neomake'
" Plug 'w0rp/ale'
Plug 'machakann/vim-sandwich'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rsi'
Plug 'sbdchd/neoformat'
"Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
" Plug 'mg979/vim-visual-multi'
" Plug 'altercation/vim-colors-solarized'
" Plug 'morhetz/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'dracula/vim'
" Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Lokaltog/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'haya14busa/incsearch.vim'

Plug 'iamcco/dict.vim'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
"Plug 'scrooloose/nerdtree', {'depends': 'jistr/vim-nerdtree-tabs', 'autoload': {'commands':['NERDTreeTabsToggle','NERDTreeToggle','NERDTreeFind']} }
Plug 't9md/vim-choosewin', {'on': 'ChooseWin'}
"Plug 'junegunn/limelight.vim', {'autoload': {'commands': ['Limelight','Limelight!!']}}
Plug 'szw/vim-maximizer', {'on': 'MaximizerToggle'}
Plug 'dyng/ctrlsf.vim', {'on': 'CtrlSF'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'isRuslan/vim-es6', {'for': 'javascript'}
"Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'elzr/vim-json', {'for': 'json'}
" Plug 'marijnh/tern_for_vim', {'autoload':{'filetypes':['javascript']}}
Plug 'digitaltoad/vim-pug', {'for': ['pug', 'jade']}
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss','sass']}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby' }
" Plug 'ruby-formatter/rufo-vim', {'for': 'ruby'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'fatih/vim-go', {'for': 'go', 'do': ':GoUpdateBinaries'}
Plug 'jimenezrick/vimerl', {'for': 'erlang'}
"Plug 'edkolev/erlang-motions.vim', {'autoload':{'filetypes':['erlang']}}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
Plug 'ekalinin/Dockerfile.vim', {'for': 'Dockerfile'}
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kovisoft/slimv', {'for': ['scheme', 'racket', 'lisp']}
" Plug 'wlangstroth/vim-racket', {'for': ['racket', 'scheme']}
Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': ['scheme', 'racket', 'lisp']}
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
"disable mouse in terminal
set mouse-=a
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
let NERDTreeIgnore=['\.beam$']
nnoremap <D-O> :NERDTreeToggle<CR>
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
nnoremap <D-{> :tabprevious<CR>
nnoremap <D-k> :tabnext<CR>
nnoremap <D-}> :tabnext<CR>

" ------------- fzf -------------
" ------------- fzf end -------------

"------------- LeaderF  -------------
" let g:Lf_ShortcutF = '<D-p>'
" let g:Lf_ReverseOrder=1
" let g:Lf_StlColorscheme = 'one'
" let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" let g:Lf_CommandMap = {'<C-V>': ['<C-S>'], '<C-]>': ['<C-V>']}
"------------- LeaderF end  -------------

"------------- Ctrlp -------------
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.beam  " MacOSX/Linux
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.beam  " MacOSX/Linux
set wildignore+=*/node_modules/*,*/vendor/*  " node module
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$' }
let g:ctrlp_working_path_mode = 0
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
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
" Open ctrlp with cmd+p
nnoremap <D-p> :CtrlP<CR>
" clear cache and open ctrlp
nnoremap <silent> <leader>p :ClearCtrlPCache<CR>\|:CtrlP<CR>
" only search in current buffer
nnoremap <D-b> :CtrlPBuffer<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <D-e> :CtrlPLine %<CR>
nnoremap <D-r> :CtrlPBufTag<Cr>
let g:ctrlp_match_func = {'match': 'pymatcher#PyMatch'}
" let g:fruzzy#usenative = 1
" let g:ctrlp_match_func = {'match': 'fruzzy#ctrlp#matcher'}
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" narrow the list down with a word under cursor
"nnoremap @ :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
"let g:ctrlp_funky_syntax_highlight = 1
"---- ctrlp-rails --------
nnoremap <Leader>rm :CtrlPModels<CR>
nnoremap <Leader>rc :CtrlPControllers<CR>
nnoremap <Leader>rv ::CtrlPViews<CR>
nnoremap <Leader>rd :CtrlPMigrations<CR>

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
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab
" let g:airline_powerline_fonts = 0
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
" true color support
if has("termguicolors")
  " fix ture color for tmux
  set t_8b=[48;2;%lu;%lu;%lum
  set t_8f=[38;2;%lu;%lu;%lum
  set termguicolors
else
  set t_Co=256
endif
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

syntax enable

" let g:gruvbox_contrast_dark="hard"
" let g:one_allow_italics = 1

" colorscheme dracula
colorscheme one
" colorscheme neodark
set background=dark

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

"------- json ----------
let g:vim_json_syntax_conceal = 2

" neoformat =========================================================== {{{
nnoremap <leader>ff :Neoformat <cr>
let g:neoformat_enabled_ruby = ['rufo']
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
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_python_enabled_makers = ['pep8']
let g:neomake_vim_makers=['vimlint']
" When writing a buffer (no delay), and reading a buffer (after 1s) and on normal mode changes (after 1000ms).
call neomake#configure#automake('nrw', 1000)
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
" let g:rainbow_active = 1
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
augroup rainbow_group
  autocmd!
  autocmd FileType ruby,javascript,css,scheme,racket,rust RainbowParentheses
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

if complete_engin ==# 'deoplete'
  " deoplete ============================================================= {{{
  let g:deoplete#enable_at_startup = 1
  imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  call deoplete#custom#option({
        \ 'max_list': 20,
        \ 'num_processes': 6,
        \ 'smart_case': v:true,
        \ })

	" add English word complete
	let g:deoplete#look#words='~/.vim/google-10k-words.txt'
  "}}}

  " neosnippet ============================================================= {{{
	imap <C-l> <Plug>(neosnippet_expand_or_jump)
	smap <C-l> <Plug>(neosnippet_expand_or_jump)
	xmap <C-l> <Plug>(neosnippet_expand_target)
	"}}}

  let g:LanguageClient_serverCommands = {
        \ 'ruby': ['solargraph', 'stdio'],
        \ 'javascript': ['typescript-language-server', '--stdio'],
        \ }
  nnoremap <leader>ll :call LanguageClient_contextMenu()<CR>
  nnoremap <leader>ld :call LanguageClient_textDocument_definition()<CR>
endif

if complete_engin ==# 'ncm2'
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()

  " IMPORTANTE: :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect

  " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
  " found' messages
  set shortmess+=c

  " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
  inoremap <c-c> <ESC>

  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new
  " line.
  " inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

  " Use <TAB> to select the popup menu:
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  " ncm2-look
  let g:ncm2_look_enabled = 1
  let g:LanguageClient_serverCommands = {
        \ 'ruby': ['solargraph', 'stdio'],
        \ 'javascript': ['javascript-typescript-stdio'],
        \ }
  nnoremap <leader>ll :call LanguageClient_contextMenu()<CR>
end

if complete_engin ==# 'coc'
  " if hidden not set, TextEdit might fail.
  set hidden

  " Better display for messages
  set cmdheight=2

  " Smaller updatetime for CursorHold & CursorHoldI
  set updatetime=300

  " always show signcolumns
  set signcolumn=yes

  " Use tab for trigger completion with characters ahead and navigate.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  " Use <C-x><C-o> to complete 'word', 'emoji' and 'include' sources
  imap <silent> <C-x><C-o> <Plug>(coc-complete-custom)

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
endif

" UltiSnips ============================================================= {{{
let g:UltiSnipsExpandTrigger       = "<C-l>"
let g:UltiSnipsListSnippets        = "<C-s>"
let g:UltiSnipsJumpForwardTrigger  = "<C-l>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
"}}}

