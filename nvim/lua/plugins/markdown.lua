return {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    config = function()
        vim.fn["mkdp#util#install"]()
    end,
}
