return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      picker = {
        sources = {
          explorer = {
            actions = {
              toggle_or_jump = function(picker, item)
                if not item then
                  return
                end
                if item.dir then
                  local Tree = require("snacks.explorer.tree")
                  local Actions = require("snacks.explorer.actions")
                  Tree:toggle(item.file)
                  Actions.update(picker, { refresh = true })
                else
                  picker:action("pick_win")
                  picker:action("jump")
                end
              end,
            },
            win = {
              list = {
                keys = {
                  ["<CR>"] = "toggle_or_jump",
                  ["<c-v>"] = { { "pick_win", "edit_vsplit" } },
                  ["<c-s>"] = { { "pick_win", "edit_split" } },
                },
              },
            },
          },
        },
        win = {
          input = {
            keys = {
              ["<c-b>"] = { "list_scroll_up", mode = { "i", "n" } },
              ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
              ["<c-f>"] = { "list_scroll_down", mode = { "i", "n" } },
              ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
            },
          },
        },
      },
    },
  },
}
