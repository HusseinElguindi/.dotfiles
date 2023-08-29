local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

-- https://www.ejmastnak.com/tutorials/vim-latex/luasnip
local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  s(
    { trig = "//", snippetType = "autosnippet" },
    fmta("\\frac{<>}{<>}", {
      i(1),
      i(2),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "ff", snippetType = "autosnippet" },
    fmta("\\frac{<>}{<>}", {
      i(1),
      i(2),
    }),
    { condition = in_mathzone }
  ),
}
