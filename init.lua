local config_path = vim.fn.stdpath('config')


require('setup')		--general setup   

require('keymaps')		--general keymaps   

require('plugins')		--packer setup - list plugins


--Require all files in plugins-setup --

local files = vim.fn.system("dir "..config_path.."\\lua\\plugins-setup /B")

for file in string.gmatch(files, "%S+") do
  local file_without_extension = string.match(file, "(.+)%..-$")
  if file_without_extension then
    require('plugins-setup.'..file_without_extension)
  end
end

--Require all files in plugins-keymaps --

local files = vim.fn.system("dir "..config_path.."\\lua\\plugins-keymaps /B")

for file in string.gmatch(files, "%S+") do
  local file_without_extension = string.match(file, "(.+)%..-$")
  if file_without_extension then
    require('plugins-keymaps.'..file_without_extension)
  end
end

