return {
  'olimorris/codecompanion.nvim',
  version = '^19.0.0',
  cmd = { 'CodeCompanion', 'CodeCompanionActions', 'CodeCompanionChat', 'CodeCompanionCLI', 'CodeCompanionCmd', 'CodeCompanionCodeReview' },
  keys = {
    { '<leader>ac', '<cmd>CodeCompanionChat Toggle<cr>', mode = { 'n', 'v' }, desc = '[A]I [C]hat toggle' },
    { '<leader>ap', '<cmd>CodeCompanionActions<cr>', mode = { 'n', 'v' }, desc = '[A]I command [P]alette' },
    { '<leader>ai', ':CodeCompanion ', mode = { 'n', 'v' }, desc = '[A]I [I]nline prompt' },
    { '<leader>ad', '<cmd>CodeCompanionChat Add<cr>', mode = 'v', desc = '[A]I a[D]d selection to chat' },
  },
  opts = {
    interactions = {
      chat = { adapter = 'copilot' },
      inline = { adapter = 'copilot' },
      cmd = { adapter = 'copilot' },
    },
    -- rules = {
    --   -- Don't auto-add rule files (e.g. ~/.claude/CLAUDE.md, AGENTS.md) to every chat.
    --   -- They can still be added to a chat by hand with the /rules slash command.
    --   opts = { chat = { autoload = false } },
    -- },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
