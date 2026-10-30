return {
  -- GitHub Copilot ghost-text suggestions. Also provides the sign-in that CodeCompanion uses.
  -- Run `:Copilot auth` once to sign in.
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  keys = {
    {
      '<leader>tc',
      function()
        vim.g.copilot_ghost_text = not vim.g.copilot_ghost_text
        vim.b.copilot_suggestion_auto_trigger = vim.g.copilot_ghost_text
        vim.notify('Copilot ghost text ' .. (vim.g.copilot_ghost_text and 'on' or 'off'))
      end,
      desc = '[T]oggle [C]opilot ghost text',
    },
  },
  init = function()
    -- copilot.lua's own toggle is per buffer, so sync every buffer with the global state
    vim.api.nvim_create_autocmd('BufEnter', {
      group = vim.api.nvim_create_augroup('copilot-ghost-text', { clear = true }),
      callback = function() vim.b.copilot_suggestion_auto_trigger = vim.g.copilot_ghost_text == true end,
    })
  end,
  opts = {
    suggestion = {
      enabled = true,
      -- Off by default, toggled with <leader>tc
      auto_trigger = false,
      -- Keep ghost text visible alongside the blink.cmp menu
      hide_during_completion = false,
      keymap = {
        accept = '<C-y>',
        accept_word = '<C-a>',
        accept_line = false,
        next = '<C-q>',
        prev = '<C-z>',
        dismiss = '<C-]>',
      },
    },
    panel = { enabled = false },
  },
}
