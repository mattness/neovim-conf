return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.component_separators = ""
      opts.options.section_separators = ""

      local function find_component(t, name)
        for _, v in ipairs(t) do
          if v[1] == name then
            return v
          end
        end
      end

      local diff_component = find_component(opts.sections.lualine_x, "diff")
      local diagnostics_component = find_component(opts.sections.lualine_c, "diagnostics")
      local showmode_component = opts.sections.lualine_x[3]
      local dap_component = opts.sections.lualine_x[4]
      local trouble_symbols = require("trouble").statusline({
        mode = "symbols",
        groups = {},
        title = false,
        filter = { range = true },
        format = "{kind_icon}{symbol.name:Normal}",
      })

      local sections = opts.sections
      sections.lualine_a = {}
      sections.lualine_b = {}
      sections.lualine_y = {}
      sections.lualine_z = {}

      sections.lualine_c = {
        {
          "branch",
          icon = "",
          color = { gui = "bold" },
        },
        diff_component,
        diagnostics_component,
        { LazyVim.lualine.pretty_path(), separator = "" },
        {
          trouble_symbols.get,
          cond = trouble_symbols.has,
        },
      }

      sections.lualine_x = {
        Snacks.profiler.status(),
        showmode_component,
        dap_component,
        { "location" },
        {
          "fileformat",
          cond = function() return vim.bo.fileformat ~= "unix" end,
          color = "lualine_a_replace"
        },
        { "encoding" },
        { "filetype" },
      }
    end,
  },
}
