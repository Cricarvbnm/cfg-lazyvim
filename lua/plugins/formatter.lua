return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- python
    local t = opts.formatters_by_ft.python or {}
    table.insert(t, "black")
    opts.formatters_by_ft.python = t
  end,
}
