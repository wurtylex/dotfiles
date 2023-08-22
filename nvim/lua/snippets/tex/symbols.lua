local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

local get_visual = function(args, parent)
  if (#parent.snippet.env.SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else  -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

local tex_utils = {}
tex_utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex_utils.in_text = function()
  return not tex_utils.in_mathzone()
end
tex_utils.in_comment = function()  -- comment detection
  return vim.fn['vimtex#syntax#in_comment']() == 1
end
tex_utils.in_env = function(name)  -- generic environment detection
    local is_inside = vim.fn['vimtex#env#is_inside'](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
-- A few concrete environments---adapt as needed
tex_utils.in_equation = function()  -- equation environment detection
    return tex_utils.in_env('equation')
end
tex_utils.in_itemize = function()  -- itemize environment detection
    return tex_utils.in_env('itemize')
end
tex_utils.in_tikz = function()  -- TikZ picture environment detection
    return tex_utils.in_env('tikzpicture')
end
tex_utils.line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
  -- Basic Symbols That are commonly used
  s({trig = ";a", snippetType = "autosnippet"}, { t("\\alpha"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";b", snippetType = "autosnippet"}, { t("\\beta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";g", snippetType = "autosnippet"}, { t("\\gamma"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";G", snippetType = "autosnippet"}, { t("\\Gamma"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";d", snippetType = "autosnippet"}, { t("\\delta"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";D", snippetType = "autosnippet"}, { t("\\Delta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";e", snippetType = "autosnippet"}, { t("\\epsilon"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";ve", snippetType = "autosnippet"}, { t("\\varepsilon"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";z", snippetType = "autosnippet"}, { t("\\zeta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";h", snippetType = "autosnippet"}, { t("\\eta"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";o", snippetType = "autosnippet"}, { t("\\theta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";vo", snippetType = "autosnippet"}, { t("\\vartheta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";O", snippetType = "autosnippet"}, { t("\\Theta"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";k", snippetType = "autosnippet"}, { t("\\kappa"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";l", snippetType = "autosnippet"}, { t("\\lambda"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";L", snippetType = "autosnippet"}, { t("\\Lambda"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";m", snippetType = "autosnippet"}, { t("\\mu"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";n", snippetType = "autosnippet"}, { t("\\nu"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";x", snippetType = "autosnippet"}, { t("\\xi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";i", snippetType = "autosnippet"}, { t("\\pi"), }, {condition = tex_utils.in_mathzone } ),
  s({trig = ";I", snippetType = "autosnippet"}, { t("\\Pi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";r", snippetType = "autosnippet"}, { t("\\rho"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";s", snippetType = "autosnippet"}, { t("\\sigma"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";S", snippetType = "autosnippet"}, { t("\\Sigma"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";t", snippetType = "autosnippet"}, { t("\\tau"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";f", snippetType = "autosnippet"}, { t("\\phi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";vf", snippetType = "autosnippet"}, { t("\\varphi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";F", snippetType = "autosnippet"}, { t("\\Phi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";c", snippetType = "autosnippet"}, { t("\\chi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";p", snippetType = "autosnippet"}, { t("\\psi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";P", snippetType = "autosnippet"}, { t("\\Psi"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";w", snippetType = "autosnippet"}, { t("\\omega"), }, {condition = tex_utils.in_mathzone } ), 
  s({trig = ";W", snippetType = "autosnippet"}, { t("\\Omega"), }, {condition = tex_utils.in_mathzone } ), 
}
