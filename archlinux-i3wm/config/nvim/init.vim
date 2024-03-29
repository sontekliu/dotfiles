" 关闭 vi 兼容模式
set nocompatible
filetype off
call plug#begin('~/.vim/plugged')
" vim 文档
Plug 'vimcn/vimcdoc'
" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" markdown 语法高亮
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" markdown 实时预览
Plug 'suan/vim-instant-markdown'
" markdown 快速编辑表格
Plug 'dhruvasagar/vim-table-mode'
" Vim 快速移动
Plug 'easymotion/vim-easymotion'
" 缩进分隔线
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'ryanoasis/vim-devicons'
 " Plug 'kien/ctrlp.vim'
 " Plug 'elzr/vim-json'
 " Plug 'scrooloose/syntastic'
 " Vim colorscheme 
 " Plug 'vim-scripts/summerfruit256.vim'
 " Plug 'flazz/vim-colorschemes'
 " Plug 'altercation/vim-colors-solarized'
 " Plug 'tomasr/molokai'
 " Plug 'vim-scripts/phd'
 " Plug 'nathanaelkane/vim-indent-guides'
 " Plug 'derekwyatt/vim-fswitch'
 " Plug 'kshenoy/vim-signature'
 " Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
 " Plug 'majutsushi/tagbar'
 " Plug 'vim-scripts/indexer.tar.gz'
 " Plug 'vim-scripts/DfrankUtil'
 " Plug 'vim-scripts/Vimprj'
 " Plug 'dyng/ctrlsf.vim'
 " Plug 'terryma/vim-multiple-cursors'
 " Plug 'vim-scripts/DrawIt'
 " Plug 'SirVer/ultisnips'
 " Plug 'Valloric/YouCompleteMe'
 " Plug 'derekwyatt/vim-protodef'
 " Plug 'fholgado/minibufexpl.vim'
 " Plug 'gcmt/wildfire.vim'
 " Plug 'sjl/gundo.vim'
 " Plug 'lilydjwg/fcitx.vim'
 " Plug 'rudes/vim-java'
 " Plug 'vim-scripts/taglist.vim'
 " Plug 'javacomplete.vim'
 " Plug 'L9'
call plug#end()

" 侦测文件类型，载入文件类型插件，为特定文件类型载入相关缩进文件
filetype plugin indent on



""""""""""""""""""""""""""""""
" Global Config
""""""""""""""""""""""""""""""
let mapleader=","
map R :source $MYVIMRC<CR>
set shortmess=atI
" 设置历史记录
set history=500
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif



""""""""""""""""""""""""""""""
" 颜色配置
""""""""""""""""""""""""""""""
set t_Co=256
let &t_ut=''
set background=dark
" 启动代码高亮
syntax enable
syntax on
" 设置配色方案
colorscheme ron
" 鼠标相关
set mouse=a
set selection=exclusive
set selectmode=mouse,key



"""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312
set fileencodings=utf-8
set termencoding=utf-8
set langmenu=zh_CN.UTF-8
set helplang=cn



"""""""""""""""""""""""""""""
" 外观设置
"""""""""""""""""""""""""""""
" 显示行好
set number
" set relativenumber
" 行号的宽度
set numberwidth=4
" 底部 bar 显示最后执行的命令
set showcmd
" 高亮当前行,根据配色方案的不同而不同
" set cursorline
" command bar 的高度
set cmdheight=2
" 显示状态栏, 1 表示不显示状态栏
set laststatus=2
" 命令行按 TAB 键自动补全
set wildmenu
" redraw only when we need to
set lazyredraw
" 高亮匹配
set showmatch
" 匹配括号高亮的时间,单位是十分之一秒
set matchtime=2
" 显示模式
set showmode
" 设置文本宽度,超过该宽度自动换行
set textwidth=100
set colorcolumn=100
" 不换行
set wrap
" 显示标尺
set ruler
" 光标移动到顶部和底部时，保持3行行距
set scrolloff=3
" 长行，右移动到不能显示的文字上，Vim 会自动让你看到后面的5个字符
set sidescroll=5
" m表示允许在两个汉字中间换行，B表示将两行为一行的时候不要在两个汉字之间加入空格
set fo+=mB



"""""""""""""""""""""""""""""
" font 
"""""""""""""""""""""""""""""
set guifont=Courier_New:h12:cANSI



""""""""""""""""""""""""""""""
" Space and Tab
""""""""""""""""""""""""""""""
" Tab 就是空格
set expandtab
" 设置 TAB 键是 4 个空格
set tabstop=4
" 编辑模式下按一下 TAB 表示 4 个空格,退格键可以一次删除4个空格
set softtabstop=4
" 设定<<和>>命令移动时的宽度为 4
set shiftwidth=4
set smarttab

    

"""""""""""""""""""""""""""""
" Search 
"""""""""""""""""""""""""""""
" 高亮匹配
set hlsearch
" 边搜索边匹配
set incsearch
" 打开文件时，去除高亮
exec "nohlsearch"
" 回车关闭高亮
nnoremap <leader><space> :nohlsearch<CR>
" 搜索时忽略大小写
set ignorecase
" 只能大小写
set smartcase



"""""""""""""""""""""""""""""
" 折叠
"""""""""""""""""""""""""""""
" 启用折叠
set foldenable
" set nofen  关闭折叠
" 0 表示打开文件时都是折叠的，99 表示均不折叠, 10 表示光标附近的不折叠
set foldlevelstart=10
" 设置折叠嵌套层级
set foldnestmax=5
" 根据缩进进行折叠
set foldmethod=indent
" <space> open/close fold
nnoremap <space> za



"""""""""""""""""""""""""""""
" Key RemMap
"""""""""""""""""""""""""""""
" 禁止使用上下左右键
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
" 垂直移动,适用于折行的情况
nnoremap j gj
nnoremap k gk
" Insert 模式 jk == <esc>
inoremap jk <esc>
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘帖至 vim
nmap <leader>p "+p
" 分屏相关
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
" 标签相关
map <leader>t :tabnew<CR>
map tt :tabNext<CR>
map tc :tabclose<CR>



"""""""""""""""""""""""""""""
" 其他设置
"""""""""""""""""""""""""""""
set clipboard+=unnamed
" iskeyword 指定哪儿些字母可以出现在一个单词中，
" @ 表示所有字母，48-57表示0-9，192-255是可以显示的拉丁字符
" 可以添加其他字符，例如，set iskeyword+=-,
set iskeyword+=@,48-57,_,192-255
" 被分割的窗口间显示空白，便于阅读
" set fillchars=vert:\ ,stl:\, stlnc:\
" backspace 可以正常处理 eol,start,indent
set backspace=eol,start,indent
set backspace=2
" 允许空格键和光标跨越行边界
set whichwrap+=<,>,h,l
" 关闭错误提示响铃
set noerrorbells
set novisualbell
set t_vb=
" 隐藏工具栏
set guioptions-=T
" 隐藏菜单栏
set guioptions-=m
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 自动读入
set autoread
" 设置魔术
set magic
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 代码补全
set completeopt=preview,menu
" 通过使用：commands 告诉我们文件的哪一行被改过
set report=0
" 让配置立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC



"""""""""""""""""""""""""""""
" 智能缩进
"""""""""""""""""""""""""""""
" 设置自动缩进
set autoindent
set smartindent
set cindent



"""""""""""""""""""""""""""""
" backup 相关
"""""""""""""""""""""""""""""
set nobackup
set noswapfile
" 自动保存
set autowrite



"""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""
" markdown  禁用折叠
let g:vim_markdown_folding_disabled = 1
" 窗口自适应,TOC (Table Of Content)
let g:vim_markdown_toc_autofit = 1
" let g:vim_markdown_conceal = 0
" JSON 语法高亮，需要 elzr/vim-json 插件的支持
let g:vim_markdown_json_frontmatter = 1
" 使用项目列表时，增加子列表时，缩排的空格数
let g:vim_markdown_new_list_item_indent = 4

" 关闭即时更新
" 1. 一段时间没有任何输入时更新
" 2. 离开 insert mode 时更新
" 3. 存储文档时更新
let g:instant_markdown_slow = 1
" 自动启动浏览器, :InstantMarkdownPreview，也可以启动
let g:instant_markdown_autostart = 0
map <leader>v :InstantMarkdownPreview<CR>
" 开放给网络上的其他人
let g:instant_markdown_open_to_the_world = 1
" 允许脚本允许
let g:instant_markdown_allow_unsafe_content = 1
" 阻止外部资源加载
let g:instant_markdown_allow_external_content = 0


" vim-table-mode start 
let g:table_mode_corcer = '|'
let g:table_mode_border = 0
let g:table_mode_fillchar = ' '

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
" vim-table-mode end


" ==
" ==  vim-easymotion config 
" ==

nmap ss <Plug>(easymotion-s2)

" NERDTree start
" 定义快捷键
map <F3> :NERDTreeToggle<CR>
" 自动打开 NERDTree
" autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
" 没有指定文件时，自动打开 NERDTree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"  打开目录时，自动打开 NERDTree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" 只剩下目录结构时，自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示行号
let g:NERDTreeShowLineNumbers=1
" 显示宽度
let g:NERDTreeWinSize=32
" 显示隐藏文件,1:显示，0:隐藏
let g:NERDTreeShowHidden=0
" 忽略文件
let g:NERDTreeIgnore=['\.DS_Store', '\.swp']
" 显示书签
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" NERDTree end


" nerdtree git plugin start 
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" nerdtree git plugin end

" vim-surround start
vmap " S"
vmap ' S'
vmap ` S`
vmap [ S[
vmap ( S(
vmap { S{
vmap } S}
vmap ] S]
vmap ) S)
vmap > S>
" vim-surround end

autocmd FileType json syntax match Comment +\/\/.\+$+
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" format json 
com! FormatJSON %!python3 -m json.tool
