return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    local auto_select = true
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-'>"] = cmp.mapping.complete(),
      ["<C-CR>"] = LazyVim.cmp.confirm({ select = auto_select }),
      ["<C-y>"] = LazyVim.cmp.confirm({ select = true }),
      ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ["<CR>"] = function(fallback)
        cmp.abort()
        fallback()
      end,
      ["<tab>"] = function(fallback)
        return LazyVim.cmp.map({ "snippet_forward", "ai_nes", "ai_accept" }, fallback)()
      end,
    })
  end,
}
