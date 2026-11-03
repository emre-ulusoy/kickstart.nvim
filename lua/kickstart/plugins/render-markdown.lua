-- render-markdown
-- https://github.com/MeanderingProgrammer/render-markdown.nvim
--
-- Renders Markdown in the buffer (headings, lists, checkboxes, tables, code blocks).
-- The line under the cursor is shown raw so editing still works.

return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  keys = {
    { '<leader>tm', '<cmd>RenderMarkdown buf_toggle<cr>', ft = 'markdown', desc = '[T]oggle [M]arkdown render' },
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}
