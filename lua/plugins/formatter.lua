return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    function register_formatter_by_ft(ft, formatter_name)
      local t = opts.formatters_by_ft[ft] or {}
      table.insert(t, formatter_name)
      opts.formatters_by_ft[ft] = t
    end

    -- python
    register_formatter_by_ft("python", "black")

    -- json
    register_formatter_by_ft("json", "prettier")
  end,
}
