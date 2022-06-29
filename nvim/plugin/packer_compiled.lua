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
local package_path_str = "C:\\Users\\VU8A6A~1.NGU\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\VU8A6A~1.NGU\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\VU8A6A~1.NGU\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\VU8A6A~1.NGU\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\VU8A6A~1.NGU\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  ["packer.nvim"] = {
    loaded = true,
    path = "F:\\vu.nguyenhoang\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "F:\\vu.nguyenhoang\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¶\3\0\0\a\0\20\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0006\4\0\0'\6\t\0B\4\2\0029\4\n\0045\5\v\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\f\0'\3\r\0006\4\0\0'\6\t\0B\4\2\0029\4\14\0045\5\15\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\16\0'\3\17\0006\4\0\0'\6\t\0B\4\2\0029\4\18\0045\6\19\0B\4\2\0A\0\2\1K\0\1\0\1\0\2\tdesc\25Open Command Pallete\vsilent\2\rcommands\f<C-S-p>\1\3\0\0\6i\6n\1\0\2\tdesc\30Open telescope find files\vsilent\2\14live_grep\f<C-S-f>\1\3\0\0\6i\6n\1\0\2\tdesc\30Open telescope find files\vsilent\2\15find_files\22telescope.builtin\n<C-p>\1\3\0\0\6i\6n\bset\vkeymap\bvim\bfzf\19load_extension\14telescope\frequire\0" },
    loaded = true,
    needs_bufread = true,
    path = "F:\\vu.nguyenhoang\\BeyonInfinityNeovim\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\nç\2\0\0\a\0\24\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\14\0005\4\f\0005\5\5\0006\6\3\0009\6\4\6=\6\6\0056\6\a\0009\6\b\6=\6\t\0056\6\a\0009\6\n\6=\6\v\5=\5\r\4=\4\15\3=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\3=\3\23\2B\0\2\1K\0\1\0\fpickers\rcommands\1\0\2\14previewer\1\ntheme\rdropdown\15find_files\1\0\0\1\0\2\14previewer\1\ntheme\rdropdown\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<C-j>\24move_selection_next\n<C-k>\28move_selection_previous\factions\6?\1\0\0\19toggle_preview\18action_layout\nsetup\14telescope\frequire\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¶\3\0\0\a\0\20\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0006\4\0\0'\6\t\0B\4\2\0029\4\n\0045\5\v\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\f\0'\3\r\0006\4\0\0'\6\t\0B\4\2\0029\4\14\0045\5\15\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\16\0'\3\17\0006\4\0\0'\6\t\0B\4\2\0029\4\18\0045\6\19\0B\4\2\0A\0\2\1K\0\1\0\1\0\2\tdesc\25Open Command Pallete\vsilent\2\rcommands\f<C-S-p>\1\3\0\0\6i\6n\1\0\2\tdesc\30Open telescope find files\vsilent\2\14live_grep\f<C-S-f>\1\3\0\0\6i\6n\1\0\2\tdesc\30Open telescope find files\vsilent\2\15find_files\22telescope.builtin\n<C-p>\1\3\0\0\6i\6n\bset\vkeymap\bvim\bfzf\19load_extension\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
