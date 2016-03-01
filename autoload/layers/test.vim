if exists('g:layers_layer_test_loaded')
  finish
endif
let g:layers_layer_test_loaded = 1

function layers#test#init()
  Plug 'tpope/vim-sensible'
endfunction
