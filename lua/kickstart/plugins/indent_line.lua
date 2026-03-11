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
      exclude = {
        filetypes = { "help", "terminal", "dashboard" },
      },
      indent = {
        char = "▏",
        repeat_linebreak = false,
        -- highlight = { "Whitespace", "CursorColumn" }
      },
      whitespace = {
        -- highlight = {
        --   -- "Whitespace",
        --   "CursorColumn"
        -- }
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
