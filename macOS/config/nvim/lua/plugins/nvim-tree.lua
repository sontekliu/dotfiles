local status, ntree = pcall(require, "nvim-tree")
if not status then
    return
end
-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

ntree.setup()

