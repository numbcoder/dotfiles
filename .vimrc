" ------------------- NeoBundle config -------------------------------------------
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Shougo/neosnippet'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
"NeoBundle 'tomasr/molokai'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'JazzCore/ctrlp-cmatcher',
"NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Raimondi/delimitMate'
"NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'morhetz/gruvbox'

NeoBundleLazy 'scrooloose/nerdtree', {
      \'depends': 'jistr/vim-nerdtree-tabs',
      \'autoload': {'commands':['NERDTreeTabsToggle','NERDTreeToggle','NERDTreeFind']}
      \}
NeoBundleLazy 't9md/vim-choosewin', {'autoload':{'commands': 'ChooseWin'}}
NeoBundleLazy 'szw/vim-maximizer', {'autoload':{'commands': 'MaximizerToggle'}}
NeoBundleLazy 'majutsushi/tagbar', {'autoload':{'commands': 'TagbarToggle'}}
NeoBundleLazy 'dyng/ctrlsf.vim', {'autoload':{'commands': 'CtrlSF'}}
NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload':{'filetypes':['coffee']}}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'marijnh/tern_for_vim', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'moll/vim-node', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'briancollins/vim-jst', {'autoload':{'filetypes':['ejs']}}
NeoBundleLazy 'slim-template/vim-slim', {'autoload':{'filetypes':['slim']}}
NeoBundleLazy 'cakebaker/scss-syntax.vim', {'autoload':{'filetypes':['scss','sass']}}
NeoBundleLazy 'plasticboy/vim-markdown', {'autoload':{'filetypes':['markdown']}}
NeoBundleLazy 'vim-ruby/vim-ruby', {'autoload':{'filetypes':['ruby']}}
NeoBundleLazy 'tpope/vim-rails', {'autoload':{'filetypes':['ruby']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload':{'filetypes':['css']}}
NeoBundleLazy 'fatih/vim-go', {'autoload':{'filetypes':['go']}}
NeoBundleLazy 'jimenezrick/vimerl', {'autoload':{'filetypes':['erlang']}}
NeoBundleLazy 'edkolev/erlang-motions.vim', {'autoload':{'filetypes':['erlang']}}
NeoBundleLazy 'hcs42/vim-erlang-tags', {'autoload':{'filetypes':['erlang']}}
"NeoBundleLazy 'oblitum/rainbow', {'autoload':{'filetypes':['ruby', 'go', 'css', 'html', 'javascript']}}
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'kana/vim-smartinput'
"NeoBundle 'benmills/vimux'
"NeoBundle 'tpope/vim-fugitive' 
"NeoBundle 'samsonw/vim-task'


call neobundle#end()

filetype plugin indent on
NeoBundleCheck
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
"use mouse when possible
set mouse=a
" set popup list count
set pumheight=12
" 自动保存
"au BufLeave,FocusLost * silent! w
" 设置开启语法高亮
syntax on
set switchbuf=usetab,newtab     " open new buffers always in new tabs
" map leader to ,
let mapleader=","
" 按<Leader><space> 取消搜索高亮
nmap <silent> <leader><space> :nohlsearch<CR>

"open define in horizontal split
"map <D-]> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
     
" map ; to :
nnoremap ; :

" Easy window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <D-i> <C-w><C-]>

"Emacs 式快捷键
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-B> <Left>

" markdown
let g:vim_markdown_folding_disabled=1


" -- NERDTree ------------
let g:NERDTreeWinSize = 28
let NERDTreeIgnore=['\.beam$']
" 把 F8 Alt+o映射到 启动NERDTree插件
nmap <F8> :NERDTreeTabsToggle<CR>
"map <M-o> :NERDTreeToggle<CR>
nmap <M-o> :NERDTreeTabsToggle<CR>
nmap <D-O> :NERDTreeTabsToggle<CR>
nmap <leader>o :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.beam  " MacOSX/Linux
set wildignore+=*/node_modules/*  " node module
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(so|beam|log)$',
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['line', 'buffertag']
let g:ctrlp_open_new_file = 't'
let g:ctrlp_clear_cache_on_exit=1
if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif
" Open ctrlp with cmd+p
"let g:ctrlp_map = '<D-p>'
" Open goto file
"nmap <D-p> :CtrlP<cr>
"imap <D-p> <esc>:CtrlP<cr>
" only search in current buffer
nmap <D-p> :CtrlPBuffer<CR>
nmap <D-e> :CtrlPLine %<CR>
nnoremap <D-r> :CtrlPBufTag<Cr>
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" narrow the list down with a word under cursor
"nnoremap @ :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
"let g:ctrlp_funky_syntax_highlight = 1
autocmd VimEnter * ClearCtrlPCache
nmap <F5> :ClearCtrlPCache<CR>
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

"----------- vim-maximizer --------
let g:maximizer_default_mapping_key = '<c-w>o'
nnoremap <C-w>o :MaximizerToggle<CR>

"----------- tagbar ---------------
let g:tagbar_width = 28
nnoremap <leader>t :TagbarToggle<CR>

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

colorscheme gruvbox
if !has("gui_running")
  let g:gruvbox_italic=0
endif
set background=dark

"colorscheme solarized
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

"------ erlang indent ----------
au FileType erlang setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4
au Filetype erlang nmap <buffer> <D-i> :sp <CR>:call VimErlangTagsSelect()<CR><C-]>

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

"------------ rainbow -------------
"let g:rainbow_active = 1

"------------ choosewim -------------
"nmap m <Plug>(choosewin)
nmap m :ChooseWin<CR>
nmap <leader>m <Plug>(choosewin-swap)

" if you want to use overlay feature
let g:choosewin_overlay_enable          = 1
" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1
let g:choosewin_blink_on_land = 0

"------------ autocomplete --------------------------
let g:autocomplete_engine = 'ycm'

if g:autocomplete_engine == 'ycm'
  " ---------- YouCompleteMe ------
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

  " ------- ultisnips ----------------------------
  let g:UltiSnipsExpandTrigger       = "<C-l>"
  let g:UltiSnipsListSnippets        = "<C-s>"
  let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
  let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

endif

if g:autocomplete_engine == 'neocomplete'
  "---------- NeoComplete -------------------
  "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
  "" Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
  endif
  let g:neocomplcache_force_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()"


  "---------------NeoSnippet-------------------------
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'
  "Plugin key-mappings.
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  " SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: "\<TAB>""

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif
endif
