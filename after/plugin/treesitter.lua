require'nvim-treesitter.configs'.setup {
  ensure_installed = { "php", "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  },
}
