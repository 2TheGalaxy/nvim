-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
--
vim.cmd "TransparentEnable"
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h" },
  callback = function() vim.opt_local.formatoptions:remove { "r", "o" } end,
})
-- vim.diagnostic.config {
--   virtual_text = false,
--   virtual_lines = true,
-- }
--
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 99
