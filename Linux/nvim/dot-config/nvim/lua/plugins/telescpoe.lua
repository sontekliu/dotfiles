return {
    -- 文件搜索插件, 需提前安装两个软件:
    -- brew install ripgrep fzf fd
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    dependencies = { 
        'nvim-lua/plenary.nvim',                     -- 必须安装依赖
        'nvim-telescope/telescope-fzf-native.nvim',  -- 建议安装
        "sharkdp/fd",                                -- 可选安装
        "nvim-treesitter/nvim-treesitter"            -- 可选安装
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        -- require('telescope').load_extension('fzf')
    end,
    keys = {
        { '<leader>?',       "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { desc = '查看近期打开的文件' } },
        { "<space><space>", "<cmd>lua require('telescope.builtin').buffers({ sort_mru = true })<CR>", { desc = '列出当前打开的文件' } }, 
        { "<leader>/",
        function()
            -- You can pass additional configuration to telescope to change theme, layout, etc.
            require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, desc = "输入关键字在当前文件(buffer)搜索"
    },
    { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", desc = "查找文件" },
    { '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>",  desc = "查找关键字" },
    { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>" },
    { '<leader>fp', "<cmd>lua require('telescope.builtin').builtin()<CR>" },
    { '<leader>fm', "<cmd>lua require('telescope.builtin').marks()<CR>" },
    { '<leader>qf', "<cmd>lua require('telescope.builtin').quickfix()<CR>" },
    { '<leader>km', "<cmd>lua require('telescope.builtin').keymaps()<CR>" },
    { '<c-p>',      "<cmd>lua require('telescope.builtin').commands()<CR>" },
}   
}
