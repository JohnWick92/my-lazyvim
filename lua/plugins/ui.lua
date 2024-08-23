return {
  { "nvim-lualine/lualine.nvim", enabled = true },
  { "akinsho/bufferline.nvim", enabled = false },
  { "goolord/alpha-nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim" },
  {
    "echasnovski/mini.indentscope",
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason", "nvdash", "nvcheatsheet" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "kingavatar/nvchad-ui.nvim",
    branch = "v2.0",
    lazy = false,
    config = function()
      require("nvchad_ui").setup({
        lazyVim = true,
        statusline = { separator_style = "default", theme = "default", lualine = false, enabled = true },
        theme_toggle = { "kanagawa-dragon" },
        nvdash = { load_on_startup = true },
      })

      -- rename nvchad
      vim.keymap.set("n", "<leader>cn", require("nvchad_ui.renamer").open, { desc = "nvchad Rename" })
    end,
  },
}
