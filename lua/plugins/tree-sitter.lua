return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "cpp",
        "python",
        "rust",
        "lua",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "hlsl",
        "glsl",
      })
    end,
  },
}
