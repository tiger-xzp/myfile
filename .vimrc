set nocompatible              " be iMproved, required
filetype off                  " required
" Change mapleader
let mapleader=";"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" code comment
Plugin 'scrooloose/nerdcommenter'
" Track the engine.
Plugin 'SirVer/ultisnips'

" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"Trigger configuration. Do not use <tab> if you use
"
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'mileszs/ack.vim'
" filesystem tree
Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
let g:ycm_global_ycm_extra_conf='/Users/xzp/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
Plugin 'jiangmiao/auto-pairs'

Plugin 'morhetz/gruvbox'

" quick google search
Plugin 'szw/vim-g'

Plugin 'wlangstroth/vim-racket'

Plugin 'fatih/vim-go'
" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_def_mapping_enabled=1
let g:go_fmt_command="goimports"
let g:tagbar_type_go = {
                        \ 'ctagstype' : 'go',
                        \ 'kinds'     : [
                        \ 'p:package',
                        \ 'i:imports:1',
                        \ 'c:constants',
                        \ 'v:variables',
                        \ 't:types',
                        \ 'n:interfaces',
                        \ 'w:fields',
                        \ 'e:embedded',
                        \ 'm:methods',
                        \ 'r:constructor',
                        \ 'f:functions'
                        \ ],
                        \ 'sro' : '.',
                        \ 'kind2scope' : {
                        \ 't' : 'ctype',
                        \ 'n' : 'ntype'
                        \ },
                        \ 'scope2kind' : {
                        \ 'ctype' : 't',
                        \ 'ntype' : 'n'
                        \ },
                        \ 'ctagsbin'  : 'gotags',
                        \ 'ctagsargs' : '-sort -silent'
                        \ }
Plugin 'cakebaker/scss-syntax.vim'

Plugin 'chrisbra/Colorizer'

:let g:colorizer_auto_color = 1
:let g:colorizer_auto_filetype='cpp,c,less,sass,scss,js,css,html'
let g:colorizer_syntax = 1

" smart indentation
set autoindent
set smartindent

" Remap split commands
map <leader>h :split<cr>
map <leader>v :vsplit<cr>

" python
Plugin 'hdima/python-syntax'
let python_highligth_all = 1

Plugin 'tpope/vim-commentary'

Plugin 'Chiel92/vim-autoformat'
noremap <leader>f :Autoformat<CR><CR>

Plugin 'Lokaltog/vim-easymotion'

Plugin 'rking/ag.vim'

Plugin 'vim-scripts/DrawIt'

Plugin 'tpope/vim-eunuch'

Plugin 'vim-scripts/DeleteTrailingWhitespace'

" all lanugage support
Plugin 'sheerun/vim-polyglot'

" change surroundins - cs/ds/ysiw/yss
Plugin 'tpope/vim-surround'

" do syntax check
Plugin 'scrooloose/syntastic'

" fuzzy file find
Plugin 'kien/ctrlp.vim'

Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'

" ansible yaml support
Plugin 'chase/vim-ansible-yaml'

" precision editing for s-expression
Plugin 'guns/vim-sexp'
Plugin 'Lokaltog/vim-powerline'

" tagbar
Plugin 'majutsushi/tagbar'
map <C-l> :TagbarToggle<CR>
map <Leader>l :TagbarToggle<CR>
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
                        \ 'kinds' : [
                        \ 'c:classes:0:1',
                        \ 'd:macros:0:1',
                        \ 'e:enumerators:0:0',
                        \ 'f:functions:0:1',
                        \ 'g:enumeration:0:1',
                        \ 'l:local:0:1',
                        \ 'm:members:0:1',
                        \ 'n:namespaces:0:1',
                        \ 'p:functions_prototypes:0:1',
                        \ 's:structs:0:1',
                        \ 't:typedefs:0:1',
                        \ 'u:unions:0:1',
                        \ 'v:global:0:1',
                        \ 'x:external:0:1'
                        \ ],
                        \ 'sro'        : '::',
                        \ 'kind2scope' : {
                        \ 'g' : 'enum',
                        \ 'n' : 'namespace',
                        \ 'c' : 'class',
                        \ 's' : 'struct',
                        \ 'u' : 'union'
                        \ },
                        \ 'scope2kind' : {
                        \ 'enum'      : 'g',
                        \ 'namespace' : 'n',
                        \ 'class'     : 'c',
                        \ 'struct'    : 's',
                        \ 'union'     : 'u'
                        \ }
                        \ }


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Use the Solarized Dark theme
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme gruvbox
"colorscheme murphy
"let g:solarized_termtrans=1

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
        set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax enable
syntax on
" Highlight current line
" set cursorline
" Make tabs as wide as two spaces
set tabstop=4
set expandtab
" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set lcs=tab:▸\ ,trail:·
" kset list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"   set relativenumber
"   au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
        " Treat .md files as Markdown
        autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

au FileType scss setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType elm setl sw=2 sts=2 et
"au FileType go setl sw=2 sts=2 et

set t_Co=256


" Disable some irritating mappings
let g:sexp_enable_insert_mode_mappings = 0"


" golang keymapping
noremap <leader>gr :! go run<CR>
noremap <leader>gd :! go get<CR>
noremap <leader>gc :! make<CR>
noremap <leader>gt :! make test<CR>

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>
" 基于语义的代码导航
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" web page
noremap <leader>eh :! open http://elixir-lang.org/docs/stable/elixir/<CR>
noremap <leader>exh :! open http://www.phoenixframework.org/v0.9.0/docs<CR>
noremap <leader>gh :! open https://github.com<CR>
set tags=tags;
set autochdir

if has("autocmd")
        au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
        au BufWritePost $MYVIMRC source $MYVIMRC
endif

filetype plugin indent on
"set completeopt=longest,menu
"let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
"let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"set tags+=/Users/xzp/stdcpp.tags

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk

