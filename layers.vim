function layers#init()
  let l:layers = layers#get_layers()
  for layer in l:layers
    let l:f = 'layers#' . layer . '#init'
    " if exists('*' . l:f)
    let l:Fun = function(l:f)
    try
      call l:Fun()
    catch
      echo 'Layer `' . layer . '` does not seem to exist'
    endtry
    " endif
  endfor
endfunction

function layers#get_layers()
  if exists('g:layers_layers')
    return g:layers_layers
  endif
  return []
endfunction
