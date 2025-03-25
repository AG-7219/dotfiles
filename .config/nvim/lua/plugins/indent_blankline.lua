local highlight = {
  "RainbowDelimiterRed",
  "RainbowDelimiterYellow",
  "RainbowDelimiterBlue",
  "RainbowDelimiterOrange",
  "RainbowDelimiterGreen",
  "RainbowDelimiterViolet",
  "RainbowDelimiterCyan",
}

return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      local rainbow = require("rainbow-delimiters")

      ---@type rainbow_delimiters.config
      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow.strategy["global"],
          cpp = function(bufnr)
            local line_count = vim.api.nvim_buf_line_count(bufnr)
            if line_count > 5000 then
              return nil
            end
            return rainbow.strategy["global"]
          end,
        },
        highlight = highlight,
      }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    config = function()
      require("ibl").setup({
        enabled = true,
        debounce = 200,
        scope = { highlight = highlight, char = "┃" },
        indent = {
          char = "│",
          tab_char = "│",
          smart_indent_cap = true,
        },
      })

      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        enabled = false,
      },
    },
  },
}
