local M = {}

M.abc = {
  n = {
    ["n"] = {
      "n nzzzv",
      "Keeps highlighted word in the middle",
    },
    ["N"] = {
      "N Nzzzv",
      "Keeps highlighted word in the middle",
    },
    ["<leader>s"] = {
      ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>",
      "Select and replace all words",
    },
  },
  v = {
    ["J"] = {
      ":m '>+1<CR>gv=gv",
      "Move highlighted lines one down",
    },
    ["K"] = {
      ":m '<-2<CR>gv=gv",
      "Move highlighted lines one up",
    },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint to line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

return M
