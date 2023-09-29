vim.g.mapleader = ","

local keymap = vim.keymap

-- ------------- 插入模式 -------------- --
-- keymap.set("i", "jk", "<ESC>")

-- ------------- 视觉模式 -------------- --
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ------------- 正常模式 -------------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader><space>", ":nohl<CR>")


-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- hop cmd
keymap.set("n", "<leader>hw", ":HopWord<CR>")
keymap.set("n", "<leader>hww", ":HopWordMW<CR>")
keymap.set("n", "<leader>hc", ":HopChar2<CR>")
keymap.set("n", "<leader>hcc", ":HopChar2MW<CR>")
keymap.set("n", "<leader>hl", ":HopLine<CR>")
keymap.set("n", "<leader>hls", ":HopLineStart<CR>")
