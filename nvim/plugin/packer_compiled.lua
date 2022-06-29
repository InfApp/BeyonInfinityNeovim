-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\rockm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\rockm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\rockm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\rockm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\rockm\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\4\0\3\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\1\0+\3\2\0B\0\3\1K\0\1\0\vtoggle\14nvim-tree\frequire�\6\1\0\a\0\"\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\18\0005\5\17\0=\5\19\0045\5\20\0005\6\21\0=\6\22\0055\6\23\0=\6\r\5=\5\24\4=\4\25\3=\3\26\2B\0\2\0016\0\27\0009\0\28\0009\0\29\0005\2\30\0'\3\31\0003\4 \0005\5!\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\tdesc\19open nvim-tree\0\n<c-b>\1\3\0\0\6i\6n\bset\vkeymap\bvim\rrenderer\nicons\vglyphs\1\0\a\14untracked\b★\fdeleted\b\frenamed\b➜\fignored\b◌\runmerged\b\vstaged\b✓\runstaged\b✗\vfolder\1\0\b\17arrow_closed\b\fdefault\b\topen\b\fsymlink\b\17symlink_open\b\15arrow_open\b\15empty_open\b\nempty\b\1\0\2\fdefault\b\fsymlink\b\tshow\1\0\0\1\0\4\tfile\2\17folder_arrow\2\vfolder\2\bgit\2\19indent_markers\1\0\1\venable\1\1\0\2\27highlight_opened_files\tnone\18highlight_git\1\bgit\1\0\2\vignore\2\venable\1\tview\1\0\4\nwidth\3\25\21hide_root_folder\2\tside\tleft\18adaptive_size\2\24update_focused_file\1\0\2\15update_cwd\1\venable\2\24filesystem_watchers\1\0\1\venable\2\ffilters\1\0\3\17hijack_netrw\2\15update_cwd\2\18disable_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\t\0\24\00056\0\0\0006\2\1\0B\0\2\3\15\0\0\0X\2\4�6\2\0\0006\4\2\0\18\5\1\0B\2\3\0016\2\3\0009\2\4\0029\2\5\0025\4\6\0'\5\a\0006\6\b\0'\b\t\0B\6\2\0029\6\n\0065\a\v\0B\2\5\0016\2\3\0009\2\4\0029\2\5\0025\4\f\0'\5\r\0006\6\b\0'\b\t\0B\6\2\0029\6\14\0065\a\15\0B\2\5\0016\2\3\0009\2\4\0029\2\5\0025\4\16\0'\5\17\0006\6\b\0'\b\t\0B\6\2\0029\6\18\0065\a\19\0B\2\5\0016\2\3\0009\2\20\0029\2\21\2'\4\22\0006\5\b\0'\a\t\0B\5\2\0029\5\23\0054\6\0\0B\2\4\1K\0\1\0\16colorscheme\17SelectThemes\29nvim_create_user_command\bapi\1\0\2\vsilent\2\tdesc\25Open Command Pallete\rcommands\f<C-S-p>\1\3\0\0\6i\6n\1\0\2\vsilent\2\tdesc\30Open telescope find files\14live_grep\f<C-S-f>\1\3\0\0\6i\6n\1\0\2\vsilent\2\tdesc\30Open telescope find files\15find_files\22telescope.builtin\frequire\n<C-p>\1\3\0\0\6i\6n\bset\vkeymap\bvim\28SetupTeleScopeExtension\19SetupTelescope\npcall\0" },
    loaded = true,
    path = "D:\\repos\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\4\0\3\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\1\0+\3\2\0B\0\3\1K\0\1\0\vtoggle\14nvim-tree\frequire�\6\1\0\a\0\"\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\18\0005\5\17\0=\5\19\0045\5\20\0005\6\21\0=\6\22\0055\6\23\0=\6\r\5=\5\24\4=\4\25\3=\3\26\2B\0\2\0016\0\27\0009\0\28\0009\0\29\0005\2\30\0'\3\31\0003\4 \0005\5!\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\tdesc\19open nvim-tree\0\n<c-b>\1\3\0\0\6i\6n\bset\vkeymap\bvim\rrenderer\nicons\vglyphs\1\0\a\14untracked\b★\fdeleted\b\frenamed\b➜\fignored\b◌\runmerged\b\vstaged\b✓\runstaged\b✗\vfolder\1\0\b\17arrow_closed\b\fdefault\b\topen\b\fsymlink\b\17symlink_open\b\15arrow_open\b\15empty_open\b\nempty\b\1\0\2\fdefault\b\fsymlink\b\tshow\1\0\0\1\0\4\tfile\2\17folder_arrow\2\vfolder\2\bgit\2\19indent_markers\1\0\1\venable\1\1\0\2\27highlight_opened_files\tnone\18highlight_git\1\bgit\1\0\2\vignore\2\venable\1\tview\1\0\4\nwidth\3\25\21hide_root_folder\2\tside\tleft\18adaptive_size\2\24update_focused_file\1\0\2\15update_cwd\1\venable\2\24filesystem_watchers\1\0\1\venable\2\ffilters\1\0\3\17hijack_netrw\2\15update_cwd\2\18disable_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\t\0\24\00056\0\0\0006\2\1\0B\0\2\3\15\0\0\0X\2\4�6\2\0\0006\4\2\0\18\5\1\0B\2\3\0016\2\3\0009\2\4\0029\2\5\0025\4\6\0'\5\a\0006\6\b\0'\b\t\0B\6\2\0029\6\n\0065\a\v\0B\2\5\0016\2\3\0009\2\4\0029\2\5\0025\4\f\0'\5\r\0006\6\b\0'\b\t\0B\6\2\0029\6\14\0065\a\15\0B\2\5\0016\2\3\0009\2\4\0029\2\5\0025\4\16\0'\5\17\0006\6\b\0'\b\t\0B\6\2\0029\6\18\0065\a\19\0B\2\5\0016\2\3\0009\2\20\0029\2\21\2'\4\22\0006\5\b\0'\a\t\0B\5\2\0029\5\23\0054\6\0\0B\2\4\1K\0\1\0\16colorscheme\17SelectThemes\29nvim_create_user_command\bapi\1\0\2\vsilent\2\tdesc\25Open Command Pallete\rcommands\f<C-S-p>\1\3\0\0\6i\6n\1\0\2\vsilent\2\tdesc\30Open telescope find files\14live_grep\f<C-S-f>\1\3\0\0\6i\6n\1\0\2\vsilent\2\tdesc\30Open telescope find files\15find_files\22telescope.builtin\frequire\n<C-p>\1\3\0\0\6i\6n\bset\vkeymap\bvim\28SetupTeleScopeExtension\19SetupTelescope\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
