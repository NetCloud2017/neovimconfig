local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
  sort_by = 'name',
  view = {
    side = 'left',
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "v", action = "vsplit" },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  git = {
    enable = true,
    ignore = false,
  },
})
