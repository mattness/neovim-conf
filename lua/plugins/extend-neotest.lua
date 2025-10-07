return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "bash" } },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "rcasia/neotest-bash",
    },
    opts = {
      adapters = {
        ["neotest-bash"] = {},
      },
    },
  },
  { "rcasia/neotest-bash", },
}
