return {
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = {
      { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git Commit" },
      { "<leader>gt", "<cmd>Git fetch --all<cr>", desc = "Git Fetch (all)" },
    }
  }
}
