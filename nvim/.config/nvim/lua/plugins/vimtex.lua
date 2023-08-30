return {
  {
    -- https://www.lazyvim.org/extras/lang/tex
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.api.nvim_create_autocmd({ "FileType" }, {
        group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
        pattern = { "bib", "tex" },
        callback = function()
          vim.wo.conceallevel = 0 -- set concel level
        end,
      })

      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

      -- performance improvements
      -- lua vim.cmd[[NoMatchParen]] -- disable matching parenthesis
      vim.g.vimtex_fold_manual = true
      vim.g.vimtex_matchparen_enabled = false -- disable matching tags (https://github.com/lervag/vimtex/issues/2174)
    end,
  },
}
