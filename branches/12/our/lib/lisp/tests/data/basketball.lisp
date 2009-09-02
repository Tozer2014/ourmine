;% Dataset from Smoothing Methods in Statistics
;% (ftp stat.cmu.edu/datasets)
;%
;% Simonoff, J.S. (1996). Smoothing Methods in Statistics. New York: Springer-Verlag.
;%
;%
;% Points scored per minute is being treated as
;% the class attribute.
(defun basketball ()
  (data
    :name 'basketball
    :columns '($assists_per_minute $height $time_played $age $points_per_minute)
    :egs
    '(
      (0.0888 201 36.02 28 0.5885)
      (0.1399 198 39.32 30 0.8291)
      (0.0747 198 38.8 26 0.4974)
      (0.0983 191 40.71 30 0.5772)
      (0.1276 196 38.4 28 0.5703)
      (0.1671 201 34.1 31 0.5835)
      (0.1906 193 36.2 30 0.5276)
      (0.1061 191 36.75 27 0.5523)
      (0.2446 185 38.43 29 0.4007)
      (0.167 203 33.54 24 0.477)
      (0.2485 188 35.01 27 0.4313)
      (0.1227 198 36.67 29 0.4909)
      (0.124 185 33.88 24 0.5668)
      (0.1461 191 35.59 30 0.5113)
      (0.2315 191 38.01 28 0.3788)
      (0.0494 193 32.38 32 0.559)
      (0.1107 196 35.22 25 0.4799)
      (0.2521 183 31.73 29 0.5735)
      (0.1007 193 28.81 34 0.6318)
      (0.1067 196 35.6 23 0.4326)
      (0.1956 188 35.28 32 0.428)
      (0.1828 191 29.54 28 0.4401)
      (0.1627 196 31.35 28 0.5581)
      (0.1403 198 33.5 23 0.4866)
      (0.1563 193 34.56 32 0.5267)
      (0.2681 183 39.53 27 0.5439)
      (0.1236 196 26.7 34 0.4419)
      (0.13 188 30.77 26 0.3998)
      (0.0896 198 25.67 30 0.4325)
      (0.2071 178 36.22 30 0.4086)
      (0.2244 185 36.55 23 0.4624)
      (0.3437 185 34.91 31 0.4325)
      (0.1058 191 28.35 28 0.4903)
      (0.2326 185 33.53 27 0.4802)
      (0.1577 193 31.07 25 0.4345)
      (0.2327 185 36.52 32 0.4819)
      (0.1256 196 27.87 29 0.6244)
      (0.107 198 24.31 34 0.3991)
      (0.1343 193 31.26 28 0.4414)
      (0.0586 196 22.18 23 0.4013)
      (0.2383 185 35.25 26 0.3801)
      (0.1006 198 22.87 30 0.3498)
      (0.2164 193 24.49 32 0.3185)
      (0.1485 198 23.57 27 0.3097)
      (0.227 191 31.72 27 0.4319)
      (0.1649 188 27.9 25 0.3799)
      (0.1188 191 22.74 24 0.4091)
      (0.194 193 20.62 27 0.3588)
      (0.2495 185 30.46 25 0.4727)
      (0.2378 185 32.38 27 0.3212)
      (0.1592 191 25.75 31 0.3418)
      (0.2069 170 33.84 30 0.4285)
      (0.2084 185 27.83 25 0.3917)
      (0.0877 193 21.67 26 0.5769)
      (0.101 193 21.79 24 0.4773)
      (0.0942 201 20.17 26 0.4512)
      (0.055 193 29.07 31 0.3096)
      (0.1071 196 24.28 24 0.3089)
      (0.0728 193 19.24 27 0.4573)
      (0.2771 180 27.07 28 0.3214)
      (0.0528 196 18.95 22 0.5437)
      (0.213 188 21.59 30 0.4121)
      (0.1356 193 13.27 31 0.2185)
      (0.1043 196 16.3 23 0.3313)
      (0.113 191 23.01 25 0.3302)
      (0.1477 196 20.31 31 0.4677)
      (0.1317 188 17.46 33 0.2406)
      (0.2187 191 21.95 28 0.3007)
      (0.2127 188 14.57 37 0.2471)
      (0.2547 160 34.55 28 0.2894)
      (0.1591 191 22 24 0.3682)
      (0.0898 196 13.37 34 0.389)
      (0.2146 188 20.51 24 0.512)
      (0.1871 183 19.78 28 0.4449)
      (0.1528 191 16.36 33 0.4035)
      (0.156 191 16.03 23 0.2683)
      (0.2348 188 24.27 26 0.2719)
      (0.1623 180 18.49 28 0.3408)
      (0.1239 180 17.76 26 0.4393)
      (0.2178 185 13.31 25 0.3004)
      (0.1608 185 17.41 26 0.3503)
      (0.0805 193 13.67 25 0.4388)
      (0.1776 193 17.46 27 0.2578)
      (0.1668 185 14.38 35 0.2989)
      (0.1072 188 12.12 31 0.4455)
      (0.1821 185 12.63 25 0.3087)
      (0.188 180 12.24 30 0.3678)
      (0.1167 196 12 24 0.3667)
      (0.2617 185 24.46 27 0.3189)
      (0.1994 188 20.06 27 0.4187)
      (0.1706 170 17 25 0.5059)
      (0.1554 183 11.58 24 0.3195)
      (0.2282 185 10.08 24 0.2381)
      (0.1778 185 18.56 23 0.2802)
      (0.1863 185 11.81 23 0.381)
      (0.1014 193 13.81 32 0.1593)
      )))
