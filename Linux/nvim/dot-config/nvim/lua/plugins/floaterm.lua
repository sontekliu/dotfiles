-- return {
--     "akinsho/toggleterm.nvim",
--     version = "*",
--     config = function()
--         require("toggleterm").setup{}
--     end,
--     keys = {
--         { '<leader>ft',       "<cmd>:ToggleTerm direction='float'<CR>", { desc = '打开终端' } },
--         -- { '<leader>ftt',       "<cmd>:ToggleTerm direction='tab'<CR>", { desc = '打开终端' } },
--         -- { '<leader>ftv',       "<cmd>:ToggleTerm direction='vertical'<CR>", { desc = '打开终端' } },
--         -- { '<leader>fth',       "<cmd>:ToggleTerm direction='horizontal'<CR>", { desc = '打开终端' } },
--     }
-- }
--

return {
    "voldikss/vim-floaterm",
    keys = {
        { '<leader>ft',       "<cmd>:FloatermToggle<CR>", { desc = '打开终端' } },
    }
}

