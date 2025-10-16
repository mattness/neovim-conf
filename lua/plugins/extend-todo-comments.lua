return {
  {
    "folke/todo-comments.nvim",
    opts = {
      -- NOTE: Support "KEYWORD: msg" and "KEYWORD(user): msg"
      highlight = {
        pattern = [[.*<((KEYWORDS)\s*(\(\w+\))?)\s*:]],
      },
      search = {
        pattern = [[\b(KEYWORDS)(?:\(\w+\))?\s*:]],
      },
    },
  },
}
