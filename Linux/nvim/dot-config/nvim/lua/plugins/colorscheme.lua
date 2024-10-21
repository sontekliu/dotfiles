return {
    -- "folke/tokyonight.nvim",
    "Mofiqul/dracula.nvim",  -- 主题
    lazy = false,
    priority = 1000,
    opts = {},
    dependencies = {
        "nvim-lualine/lualine.nvim",    -- 状态栏
        "nvim-tree/nvim-web-devicons",  -- 图标库，需要安装 hack-nerd-font
        "utilyre/barbecue.nvim",        -- 显示打开文件的路径，依赖 treesitter
        "SmiteshP/nvim-navic",          -- barbecue.nvim 的依赖
    },
    config = function()
        -- vim.cmd[[colorscheme tokyonight-storm]]
        vim.cmd[[colorscheme dracula]] -- 启用主题

        -- 启用状态栏
        require('lualine').setup({
            options = {
                theme = 'dracula'
            },
        })
        -- 启用 barbecue.nvim
        require('barbecue').setup {
            theme = 'dracula'
        }
    end
}
