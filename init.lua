--設定ファイル読み込み
require("base")
require("autocmds")
require("options")
require("keymaps")
require("plugins")


------------------------------------------------------------------------
--プラグイン管理lazy.nvimの設定
------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = require('plugins')
require ('lazy').setup(plugins)

