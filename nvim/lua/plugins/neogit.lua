
-- import nvim-cmp plugin safely
local cmp_status, neogit = pcall(require, "neogit")
if not cmp_status then
  return
end

neogit.setup {
  integrations = { diffview = true },  -- 可选：集成 diffview.nvim
  disable_signs = true,  -- 显示 Git 状态标记
}
