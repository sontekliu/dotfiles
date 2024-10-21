vim.g.mapleader = ","

local keymap = vim.keymap

-- ------------- 插入模式 -------------- --
-- keymap.set("i", "jk", "<ESC>")
--禁用上下左右健
keymap.set({"n", "i"}, "<Left>", "<Nop>")
keymap.set({"n", "i"}, "<Right>", "<Nop>")
keymap.set({"n", "i"}, "<Up>", "<Nop>")
keymap.set({"n", "i"}, "<Down>", "<Nop>")

-- ------------- 视觉模式 -------------- --
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ------------- 正常模式 -------------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
-- 移动窗口
keymap.set("n", "<Space>", "<C-w>w") -- 按空格键切换窗口
keymap.set("", "s<left>", "<C-w>h") --  s + 左箭头 光标移动到左边窗口
keymap.set("", "s<up>", "<C-w>k") --  s + 上箭头 光标移动到上面窗口
keymap.set("", "s<down>", "<C-w>j") --  s + 下箭头 光标移动到下面窗口
keymap.set("", "s<right>", "<C-w>l") --  s + 右箭头 光标移动到右边窗口
keymap.set("", "sh", "<C-w>h") --  s + h 光标移动到右边窗口
keymap.set("", "sk", "<C-w>k") --  s + 右箭头 光标移动到右边窗口
keymap.set("", "sj", "<C-w>j") --  s + 右箭头 光标移动到右边窗口
keymap.set("", "sl", "<C-w>l") --  s + 右箭头 光标移动到右边窗口

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")


-- 加，减数字
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")


-- 全选
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<CR>", {silent = true}) -- silent 表示左下角不显示执行的命令

-- 取消高亮
keymap.set("n", "<leader><space>", ":nohl<CR>")


-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- hop cmd
-- keymap.set("n", "<leader>hw", ":HopWord<CR>")
-- keymap.set("n", "<leader>hww", ":HopWordMW<CR>")
-- keymap.set("n", "<leader>hc", ":HopChar2<CR>")
-- keymap.set("n", "<leader>hcc", ":HopChar2MW<CR>")
-- keymap.set("n", "<leader>hl", ":HopLine<CR>")
-- keymap.set("n", "<leader>hls", ":HopLineStart<CR>")


