local vim = vim

if not vim.g.vscode then
  require("base").init()
  require("plugins").init()
end
