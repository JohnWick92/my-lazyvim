return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    require("luasnip.loaders.from_vscode").lazy_load(),
    require("luasnip.loaders.from_snipmate").lazy_load({
      paths = { "~/.config/nvim/snippets" },
      include = { "blade", "vue", "php" },
    }),
  },
}
