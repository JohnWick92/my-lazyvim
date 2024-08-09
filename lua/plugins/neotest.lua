return {
  "nvim-neotest/neotest",
  dependencies = {
    "V13Axel/neotest-pest",
    "marilari88/neotest-vitest",
    "jfpedroza/neotest-elixir",
    "olimorris/neotest-rspec",
    "fredrikaverpil/neotest-golang",
    "rouge8/neotest-rust",
    "lawrence-laz/neotest-zig",
    "nvim-neotest/neotest-python",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-vitest"),
        require("neotest-pest"),
        require("neotest-rust"),
        require("neotest-elixir"),
        require("neotest-golang"),
        require("neotest-rspec"),
        require("neotest-zig")({
          dap = {
            adapter = "lldb",
          },
        }),
        require("neotest-python"),
      },
    })
  end,
}
