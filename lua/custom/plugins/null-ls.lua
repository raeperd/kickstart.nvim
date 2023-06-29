return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = function()
    local null_ls = require 'null-ls'
    return {
      sources = {
        null_ls.builtins.formatting.stylua,

        -- go
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.code_actions.impl,
        null_ls.builtins.code_actions.gomodifytags,
      },
    }
  end,
}
