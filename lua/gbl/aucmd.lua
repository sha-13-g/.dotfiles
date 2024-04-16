vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.php" },
  callback = function()
    vim.opt.makeprg = "php src/index.php"
  end
})


vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.go" },
  callback = function()
    vim.opt.makeprg = "go run ."
  end
})

vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.ts" },
  callback = function()
    vim.opt.makeprg = "tsc & node dist/app.js"
  end
})

vim.api.nvim_create_autocmd({ "bufWritePre" }, {
  pattern = { "*.*" },
  callback = function()
    vim.lsp.buf.format()
  end
})

-- Run gofmt + goimports on save

local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimports()
  end,
  group = format_sync_grp,
})
