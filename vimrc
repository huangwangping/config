"==================================
"    Vim基本配置
"===================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

set hlsearch
set incsearch
set nowrapscan
set smartindent

set autochdir
set wildmode=list:full
set wildmenu
set linebreak
set ruler

"插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"代码折叠
set foldmethod=syntax
""set foldlevelstart=99

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
"set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on
""if has("gui_running")
""    set background=light
""else
    set background=dark
""endif
""colorscheme solarized

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8

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
Bundle 'majutsushi/tagbar'
nnoremap <F9> :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
Bundle 'winmanager'
Bundle 'taglist.vim'
"Bundle 'minibufexpl.vim'
Bundle 'bufexplorer.zip'
"Bundle 'exuberant-ctags'
" non github repos
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/LargeFile'
Bundle 'vim-scripts/sessionman.vim'
nnoremap :sl :SessionList
"php
Bundle 'vim-scripts/phpvim'
Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'rayburgemeestre/phpfolding.vim'
"python 工具集合
Bundle 'klen/python-mode'
let g:pymode_run_key='<leader><C-R>'
""let g:pymode_lint_ignore='E501,C901'
"',W0611'
let g:pymode_doc_key='<leadre>k'
"python 语法检查
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }

Bundle 'vim-scripts/SQLUtilities'
Bundle 'tpope/vim-surround'
" 括号着色
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'spf13/vim-colors'
" Always On
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
" ...
"
" go
""Bundle 'fatih/vim-go'
Bundle 'cespare/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"vim-power-line插件
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8

"vim winmanager
let g:winManagerWindowLayout="FileExplorer,BufExplorer"
nmap <silent><F8> :WMToggle<cr>
