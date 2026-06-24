return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      -- diagnostics config (safe, does not override LazyVim LSP setup)
      vim.diagnostic.config({
        update_in_insert = false,
        severity_sort = true,
        float = {
          border = "rounded",
          source = "always",
        },
      })

      vim.keymap.set("n", "gl", function()
        vim.diagnostic.open_float(nil, {
          focus = false,
          border = "rounded",
          source = "always",
        })
      end, { desc = "Line Diagnostics" })
    end,
  },
}
