local status, tn = pcall(require, "tokyonight")
if not status then
    return
end

tn.setup({
    style = "storm",
    dim_incative = true
})

vim.cmd[[colorscheme tokyonight-storm]]
-- vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd[[colorscheme tokyonight-moon]]
