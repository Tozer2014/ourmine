(defun weather.nominal ()
  (data
    :name 'weather.nominal
    :columns '(outlook temperature humidity windy play)
    :egs
    '(
      (sunny hot high FALSE no)
      (sunny hot high TRUE no)
      (overcast hot high FALSE yes)
      (rainy mild high FALSE yes)
      (rainy cool normal FALSE yes)
      (rainy cool normal TRUE no)
      (overcast cool normal TRUE yes)
      (sunny mild high FALSE no)
      (sunny cool normal FALSE yes)
      (rainy mild normal FALSE yes)
      (sunny mild normal TRUE yes)
      (overcast mild high TRUE yes)
      (overcast hot normal FALSE yes)
      (rainy mild high TRUE no)
      )))