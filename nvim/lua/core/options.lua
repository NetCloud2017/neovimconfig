local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true -- shows absolute line number on cursor line

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight cursorline

-- appearance
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard = "unnamed,unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,           -- 行间距
    wrap = true,           -- 启用自动换行
    -- format = function(diagnostic)
    --   -- 将换行符 \n 替换为空格并截断长消息
    --   local message = diagnostic.message:gsub('\n', ' ')
    --   return string.format("%s (%s)", message:sub(1, 120), diagnostic.source)
    -- end
  }
})
