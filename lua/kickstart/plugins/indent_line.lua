return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    -- event = { "BufReadPre", "BufNewFile" },
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      -- exclude = {
      --   filetypes = { "help", "terminal", "dashboard" },
      -- },
      indent = {
        char = "▏",
        -- highlight = { "CursorColumn", "Whitespace" }
      },
      whitespace = {
        highlight = {
          "Whitespace"
        }
      },
      scope = {
        enabled = true
      }
    },
    -- config = function(_, opts)
    --   require("ibl").setup(opts)
    -- end,
  }
}
