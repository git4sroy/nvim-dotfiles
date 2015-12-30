let vimplugins = '~/.config/nvim/plugins'
for fpath in split(globpath(vimplugins, '*.vimplug'), '\n')
  exe 'source' fpath
endfor
