return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "bash" } },
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-bash"] = {},
      },
    },
  },
  { "rcasia/neotest-bash", },
}
