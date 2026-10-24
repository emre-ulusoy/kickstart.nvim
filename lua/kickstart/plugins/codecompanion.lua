return {
  'olimorris/codecompanion.nvim',
  version = '^19.0.0',
  cmd = { 'CodeCompanion', 'CodeCompanionActions', 'CodeCompanionChat', 'CodeCompanionCLI', 'CodeCompanionCmd', 'CodeCompanionCodeReview' },
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
