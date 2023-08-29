return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_lua").lazy_load()

      -- Set LuaSnip config
      require("luasnip").config.set_config({
        -- Enable autotriggered snippets
        enable_autosnippets = true,
      })
    end,
  },
}
