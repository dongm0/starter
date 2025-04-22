-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local conf = {}
conf.is_windows = vim.loop.os_uname().sysname == "Windows_NT"
conf.is_linux = vim.loop.os_uname().sysname == "Linux"
conf.is_mac = vim.loop.os_uname().sysname == "Darwin"
conf.is_wsl = vim.api.nvim_call_function("has", { "wsl" }) == 1
conf.vim_path = vim.api.nvim_call_function("stdpath", { "config" })
conf.vim_data_path = vim.api.nvim_call_function("stdpath", { "data" })
conf.path_slash = conf.is_windows and "\\" or "/"
conf.home = conf.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
conf.cache_dir = conf.home .. conf.path_slash .. ".cache" .. conf.path_slash .. "nvim" .. conf.path_slash
conf.modules_dir = conf.vim_path .. conf.path_slash .. "modules"

if conf.is_windows then
  LazyVim.terminal.setup("pwsh")
end
