-- :h option-list  查看帮助 
local global = vim.g
local opt = vim.opt
local buffer = vim.b

--
-- 文件编码, 外观终端真颜色
--
global.encoding = "UTF-8"
opt.fileencoding = "UTF-8"
opt.termguicolors = true
opt.background = "dark"

--
-- 设置行号,显示相对行号,高亮当前行
--
-- opt.relativenumber=true
opt.number=true
opt.cursorline = true


-- 
-- 缩进
--
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.breakindent = true


-- 
-- 启用鼠标,  系统剪贴板
--
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")


--
-- 搜索配置
--
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true


--
-- 不生成备份文件
--
opt.backup = false
opt.writebackup = false
opt.swapfile = false


--
-- 默认新窗口右和下
--
opt.splitright = true
opt.splitbelow = true


--
-- jk移动时光标下上方保留8行
--
opt.scrolloff = 2
opt.sidescrolloff = 10


--
-- undo file
--
opt.undofile = true
opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')


--
-- 其他配置
--
-- 命令行高为2，提供足够的显示空间
opt.cmdheight = 2
opt.showcmd = true
opt.laststatus = 2
-- 右侧参考线，超过表示代码太长了，考虑换行
opt.colorcolumn = "120"
-- 禁止折行
opt.wrap = false
-- 显示左侧图标指示列
opt.signcolumn = "yes"
opt.autowrite = true
-- 当文件被外部程序修改时，自动加载
opt.autoread = true
-- smaller updatetime 
opt.updatetime = 300
-- 等待mappings
opt.timeoutlen = 500
-- always show tabline
opt.showtabline = 2
-- 行结尾可以跳到下一行
opt.whichwrap = 'b,s,<,>,[,],h,l'
-- 允许隐藏被修改过的buffer
opt.hidden = true
-- 自动补全不自动选中
opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
-- global.completeopt = "menu,menuone,noselect,noinsert"
-- 不可见字符的显示，这里只把空格显示为一个点
-- opt.list = true
-- opt.listchars = "space:·"
-- 补全增强
opt.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
-- opt.shortmess = vim.o.shortmess .. 'c'
opt.pumheight = 10
opt.backupskip = "/tmp/*,/private/tmp/*"
opt.backspace = "start,eol,indent"

