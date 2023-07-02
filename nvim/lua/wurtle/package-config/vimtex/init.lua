vim.g.vimtex_view_method = 'zathura'
vim.g.latex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_syntax_enabled = 0
vim.g.vimtex_compiler_progname = 'nvr'
vim.cmd [[
  let g:vimtex_compiler_latexmk = {
      \ 'aux_dir' : '.hidden',
      \ 'out_dir' : '.hidden',
      \ }
]]
