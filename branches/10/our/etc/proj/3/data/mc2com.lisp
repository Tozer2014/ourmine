#|@relation shared_MC2

@attribute loc               numeric
@attribute v(g)              numeric
@attribute ev(g)             numeric
@attribute iv(g)             numeric
@attribute v                 numeric
@attribute l                 numeric
@attribute d                 numeric
@attribute i                 numeric
@attribute e                 numeric
@attribute b                 numeric
@attribute t                 numeric
@attribute lOCode            numeric
@attribute lOComment         numeric
@attribute locCodeAndComment numeric
@attribute uniq_Op           numeric
@attribute uniq_Opnd         numeric
@attribute total_Op          numeric
@attribute total_Opnd        numeric
@attribute branchCount       numeric
@attribute defects {false) true)}
|#

(defun mc2com ()
  (table-deep-copy (data
   :name 'mc2com
   :columns '($loc $vg $ivg $v $l $d $e $b $t $lOCode $lOCcomment $locCodeAndComment $uniq_Op $uniq_Opnd $total_Op $total_Opnd $branchCount defects)
   :egs
   '( 
(39 53 0 4 16 33.73 20674.45 0.2 1 132 1 69 14 11 79 1148.58 7 false)
(24 38 0 7 11 17.19 9606.08 0.19 5 105 1 47 19 21 67 533.67 13 true)
(21 62 0 1 13 9.69 6686.47 0.23 1 128 1 51 10 32 66 371.47 1 false)
(9 16 4 1 2 10.29 1810.29 0.06 1 44 1 18 9 7 28 100.57 1 false)
(217 421 12 45 75 67.9 488861.64 2.4 30 1037 15 344 30 93 616 27158.98 89 true)
(69 130 3 7 17 40.86 83172.01 0.68 1 349 5 102 22 35 219 4620.67 13 false)
(2 2 0 1 0 1.5 17.41 0 1 5 1 4 3 2 3 0.97 1 false)
(48 126 5 2 8 27.79 53839.29 0.65 1 345 1 66 15 34 219 2991.07 3 false)
(4 11 0 1 0 6.42 569.87 0.03 1 24 1 6 7 6 13 31.66 1 true)
(35 42 0 7 3 12.83 5673.31 0.15 6 91 7 44 11 18 49 315.18 13 false)
(50 70 0 10 22 41.36 36223.29 0.29 7 191 1 90 13 11 121 2012.4 19 false)
(10 35 0 5 2 14.32 4084.22 0.1 1 66 1 17 9 11 31 226.9 9 true)
(27 26 0 5 0 10.71 3341.46 0.1 5 63 4 30 14 17 37 185.64 9 true)
(265 435 0 49 51 125.67 864010.77 2.29 34 1118 8 353 26 45 683 48000.6 97 true)
(4 9 0 4 0 9 627.65 0.02 3 22 1 6 6 3 13 34.87 7 false)
(57 150 8 8 21 65.22 123506.5 0.63 1 349 5 91 20 23 199 6861.47 15 true)
(19 32 0 5 11 15.06 6456.82 0.14 3 85 2 42 16 17 53 358.71 9 false)
(94 90 3 20 17 23.68 36775.64 0.52 1 241 1 137 30 57 151 2043.09 24 false)
(84 191 16 4 32 37.76 105042.17 0.93 1 471 1 135 17 43 280 5835.68 7 false)
(30 44 0 7 14 18.17 9701.95 0.18 1 99 3 55 19 23 55 539 13 false)
(104 168 0 10 27 55.2 139045.04 0.84 1 430 3 157 23 35 262 7724.72 19 true)
(31 44 1 7 11 22 12176.57 0.18 1 104 3 54 20 20 60 676.48 13 false)
(7 14 0 2 3 4.2 470.4 0.04 1 28 1 17 6 10 14 26.13 3 false)
(2 3 0 1 1 5.25 166.42 0.01 1 10 1 6 7 2 7 9.25 1 false)
(35 58 4 3 16 7.63 5668.74 0.25 1 133 1 67 10 38 75 314.93 5 false)
(42 98 0 9 10 102.9 119290.11 0.39 6 234 2 63 21 10 136 6627.23 17 true)
(1 0 0 1 0 0 0 0 1 1 1 3 1 0 1 0 1 false)
(12 58 0 3 0 36.25 20339.03 0.19 1 118 1 15 15 12 60 1129.95 5 true)
(6 13 0 3 0 11.92 1461.27 0.04 1 30 1 9 11 6 17 81.18 5 false)
(6 10 0 1 3 6.67 989.91 0.05 1 39 1 13 8 6 29 55 1 false)
(3 4 0 2 0 5 154.4 0.01 1 11 1 5 5 2 7 8.58 3 false)
(3 9 0 2 1 5.4 317.58 0.02 1 17 1 7 6 5 8 17.64 3 false)
(32 81 0 12 14 24.05 22915.89 0.32 6 168 5 56 19 32 87 1273.1 23 true)
(16 50 0 5 0 18.75 11252.36 0.2 3 117 1 20 15 20 67 625.13 9 false)
(5 4 0 2 0 2.5 87.17 0.01 1 11 1 7 5 4 7 4.84 3 false)
(2 3 0 1 0 3 85.59 0.01 1 9 1 4 6 3 6 4.75 1 false)
(39 137 0 14 20 40.48 52735.32 0.43 1 254 4 69 13 22 117 2929.74 27 true)
(3 3 0 1 0 3 95.1 0.01 1 10 1 5 6 3 7 5.28 1 false)
(48 78 2 7 28 37.3 39335.04 0.35 1 192 1 116 22 23 114 2185.28 12 false)
(57 153 6 7 10 26.26 63590.46 0.81 5 373 1 79 23 67 220 3532.8 13 true)
(25 77 7 2 3 12.83 11396.12 0.3 1 159 2 35 12 36 82 633.12 3 false)
(365 632 0 31 0 57.6 623450.46 3.61 1 1369 1 367 37 203 737 34636.14 32 false)
(13 10 1 2 0 7.14 788.3 0.04 1 27 1 16 10 7 17 43.79 3 false)
(120 166 6 26 24 57.74 143350.9 0.83 23 395 15 164 32 46 229 7963.94 46 true)
(7 21 0 3 4 8.17 1372 0.06 1 42 2 17 7 9 21 76.22 5 true)
(49 58 1 10 12 26.1 20545.64 0.26 7 150 7 82 18 20 92 1141.42 19 true)
(18 27 3 4 3 10.38 2583.65 0.08 1 55 3 27 10 13 28 143.54 7 false)
(12 20 0 3 28 9 3020.28 0.11 1 79 1 47 9 10 59 167.79 5 false)
(31 78 0 8 2 28.08 26512.3 0.31 3 174 2 41 18 25 96 1472.91 15 false)
(7 15 0 1 2 8.33 1380.58 0.06 1 39 1 15 10 9 24 76.7 1 true)
(57 89 2 4 6 19.78 23415.51 0.39 1 224 4 71 12 27 135 1300.86 7 false)
(47 176 4 7 4 48 101286.83 0.7 1 372 3 59 18 33 196 5627.05 13 false)
(6 10 0 1 3 6.67 989.91 0.05 1 39 1 13 8 6 29 55 1 true)
(17 29 0 6 2 29 8908.58 0.1 1 67 1 34 16 8 38 494.92 11 false)
(23 50 6 7 0 38.64 21359.95 0.18 1 115 1 26 17 11 65 1186.66 13 false)
(2 2 0 1 2 3.5 110.95 0.01 1 10 1 10 7 2 8 6.16 1 false)
(9 24 0 1 2 3 635.32 0.07 1 49 1 13 4 16 25 35.3 1 false)
(41 79 0 8 5 65.83 67150 0.34 5 204 1 53 20 12 125 3730.56 15 false)
(124 270 3 30 85 107.21 429807.51 1.34 23 676 8 278 27 34 406 23878.2 59 true)
(62 186 5 23 44 78.12 161381.25 0.69 5 374 2 125 21 25 188 8965.62 45 true)
(15 12 1 2 0 7.5 969.51 0.04 1 31 1 18 10 8 19 53.86 3 false)
(11 11 2 2 7 7.33 725.94 0.03 1 26 1 22 8 6 15 40.33 3 false)
(15 26 4 3 3 14.3 4019.85 0.09 1 64 1 26 11 10 38 223.32 5 false)
(5 8 0 2 0 4.8 282.29 0.02 1 17 2 7 6 5 9 15.68 3 false)
(31 43 0 5 11 21.5 15450.32 0.24 3 139 3 85 18 18 96 858.35 9 true)
(28 67 0 11 0 31.64 25154.15 0.27 9 155 7 31 17 18 88 1397.45 21 false)
(23 67 0 5 0 20.74 15931.15 0.26 1 151 1 26 13 21 84 885.06 9 false)
(306 615 19 58 98 96.09 991629.56 3.44 39 1479 16 466 30 96 864 55090.53 115 true)
(10 23 0 3 0 13.59 3115.69 0.08 1 50 2 13 13 11 27 173.09 5 false)
(3 4 0 2 0 5 154.4 0.01 1 11 1 5 5 2 7 8.58 3 false)
(4 9 0 4 0 9 627.65 0.02 3 22 1 6 6 3 13 34.87 7 false)
(22 30 2 4 0 19.62 6833.79 0.12 1 71 1 26 17 13 41 379.65 7 false)
(64 199 11 7 18 24.88 64889.48 0.87 1 407 2 100 17 68 208 3604.97 13 false)
(3 4 2 1 0 3 169.42 0.02 1 17 1 5 6 4 13 9.41 1 false)
(109 120 9 24 68 27.46 56640.44 0.69 8 321 14 242 27 59 201 3146.69 41 false)
(4 4 0 1 3 4 139.48 0.01 1 11 1 11 6 3 7 7.75 1 false)
(12 36 0 4 2 21 7600.61 0.12 3 77 1 20 14 12 41 422.26 7 true)
(30 54 0 2 6 10.61 6447.25 0.2 1 115 1 47 11 28 61 358.18 3 true)
(15 24 6 1 5 12 4252.78 0.12 1 82 1 26 10 10 58 236.27 1 false)
(28 51 0 10 0 37.09 19752.67 0.18 1 112 4 31 16 11 61 1097.37 19 false)
(8 5 0 2 2 2 88.76 0.01 1 14 2 14 4 5 9 4.93 3 false)
(4 14 0 1 0 8.17 906.61 0.04 1 30 1 6 7 6 16 50.37 1 true)
(11 30 0 1 22 10.5 3819.73 0.12 1 89 1 45 7 10 59 212.21 1 false)
(85 268 10 8 27 27.35 102014.82 1.24 1 542 2 137 20 98 274 5667.49 15 false)
(18 42 0 3 5 18.38 9467.23 0.17 1 105 1 30 14 16 63 525.96 5 false)
(9 18 0 2 0 14.62 2569.51 0.06 1 40 1 12 13 8 22 142.75 3 true)
(15 19 0 4 6 11.69 3294.46 0.09 4 58 1 29 16 13 39 183.03 7 true)
(43 83 0 10 0 26.68 29766.87 0.37 4 202 3 46 18 28 119 1653.71 19 false)
(2 2 0 1 0 1.5 17.41 0 1 5 1 4 3 2 3 0.97 1 false)
(7 15 0 2 3 4.5 522 0.04 1 29 1 17 6 10 14 29 3 false)
(35 23 3 10 28 10.45 4622.69 0.15 1 82 7 74 20 22 59 256.82 11 true)
(97 140 19 10 63 32.56 70837.72 0.73 3 364 6 233 20 43 224 3935.43 19 true)
(244 463 19 63 123 93.2 766179.74 2.74 36 1217 9 474 31 77 754 42565.54 125 true)
(6 9 0 1 0 10.13 786.81 0.03 1 21 1 9 9 4 12 43.71 1 false)
(68 215 11 7 19 25.03 71345.69 0.95 1 439 2 108 17 73 224 3963.65 13 false)
(32 38 1 13 4 19 10212.78 0.18 7 101 7 44 20 20 63 567.38 20 true)
(31 50 0 8 8 26.39 16634.07 0.21 4 121 1 48 19 18 71 924.12 15 false)
(29 43 0 5 12 17.76 10439.17 0.2 3 109 2 54 19 23 66 579.95 9 false)
(9 16 1 1 38 7 1312.72 0.06 1 48 1 56 7 8 32 72.93 1 false)
(3 6 0 2 0 9 677.56 0.03 1 21 1 5 9 3 15 37.64 3 true)
(26 40 0 5 4 26.67 12532.75 0.16 1 107 1 36 12 9 67 696.26 9 false)
(59 62 0 15 14 21.17 20950.15 0.33 3 162 9 89 28 41 100 1163.9 24 true)
(23 43 0 6 15 17.2 9336.88 0.18 3 105 2 52 16 20 62 518.72 11 false)
(7 7 0 2 1 6.3 479.73 0.03 1 20 1 12 9 5 13 26.65 3 false)
(5 5 0 1 5 3.75 174.4 0.02 1 14 1 15 6 4 9 9.69 1 false)
(14 10 0 3 7 6.67 710.71 0.04 1 28 1 28 8 6 18 39.48 5 true)
(24 53 0 8 7 26.5 14523.02 0.18 3 114 1 39 14 14 61 806.83 15 false)
(7 14 0 4 0 13 1854.11 0.05 3 33 2 10 13 7 19 103.01 7 false)
(163 307 0 35 37 87.12 383277.96 1.47 26 751 1 231 21 37 444 21293.22 69 false)
(19 42 0 4 6 13.7 6324.89 0.15 1 88 2 35 15 23 46 351.38 7 false)
(4 7 0 3 0 8.17 542.58 0.02 1 20 1 6 7 3 13 30.14 5 false)
(74 120 0 11 16 34.5 62277.28 0.6 4 302 9 107 23 40 182 3459.85 21 false)
(6 12 0 2 4 9.43 1218.81 0.04 1 31 1 15 11 7 19 67.71 3 false)
(129 145 4 35 52 27.62 64595.11 0.78 17 363 18 213 24 63 218 3588.62 69 false)
(6 16 0 3 0 9.33 1070.66 0.04 1 31 1 8 7 6 15 59.48 5 false)
(13 15 0 2 0 12.86 2075.42 0.05 1 38 2 16 12 7 23 115.3 3 false)
(41 71 2 7 13 24.48 25705.69 0.35 4 187 2 69 20 29 116 1428.09 13 false)
(93 261 11 26 21 39.49 145307.86 1.23 13 555 2 140 23 76 294 8072.66 51 false)
(42 123 7 4 0 21 30230.73 0.48 1 249 1 46 14 41 126 1679.48 7 false)
(7 11 0 2 2 8.25 709.1 0.03 1 22 1 12 9 6 11 39.39 3 false)
(15 25 4 3 5 11.46 3265.45 0.09 1 63 2 29 11 12 38 181.41 5 false)
(82 159 3 14 18 46.22 122395.16 0.88 9 435 6 119 25 43 276 6799.73 27 false)
(11 13 0 2 1 8.13 1118.06 0.05 1 33 1 14 10 8 20 62.11 3 false)
(7 15 0 2 3 4.5 540 0.04 1 30 1 17 6 10 15 30 3 false)
(48 193 0 13 18 58.48 133998.62 0.76 6 400 3 75 20 33 207 7444.37 25 true)
(8 17 0 2 0 7.29 916.65 0.04 1 34 1 12 6 7 17 50.93 3 false)
(7 28 0 1 16 5.76 1903.03 0.11 1 72 1 30 7 17 44 105.72 1 false)
(9 35 0 1 8 5.33 2796.39 0.18 1 107 1 26 7 23 72 155.36 1 true)
(11 11 0 2 1 7.56 931.62 0.04 1 29 1 14 11 8 18 51.76 3 false)
(87 241 9 16 21 35.77 109011.28 1.02 1 478 2 136 19 64 237 6056.18 31 true)
(9 22 0 4 0 20.43 4149.67 0.07 1 47 2 12 13 7 25 230.54 7 false)
(3 4 0 1 0 2.67 82.35 0.01 1 11 1 5 4 3 7 4.57 1 false)
(13 24 0 2 0 10.5 2174.18 0.07 1 53 1 15 7 8 29 120.79 3 false)
(2 1 0 2 0 1.5 12 0 1 4 1 4 3 1 3 0.67 3 false)
(3 5 0 1 0 2.5 82.5 0.01 1 11 1 5 4 4 6 4.58 1 false)
(4 20 0 1 14 14 2158.15 0.05 1 43 1 21 7 5 23 119.9 1 true)
(23 83 1 2 6 21.58 20724.8 0.32 1 183 2 38 13 25 100 1151.38 3 false)
(162 258 2 31 68 64.5 256623.54 1.33 20 633 3 277 26 52 375 14256.86 61 true)
(18 22 0 5 4 13 3039.83 0.08 1 51 1 27 13 11 29 168.88 9 false)
(13 24 0 1 5 2.4 490.38 0.07 1 49 1 24 3 15 25 27.24 1 false)
(3 8 0 2 1 6 298.97 0.02 1 15 1 7 6 4 7 16.61 3 false)
(9 13 0 2 0 9.75 1028.49 0.04 1 27 1 12 9 6 14 57.14 3 true)
(13 29 0 2 7 21.09 7220.51 0.11 1 72 1 28 16 11 43 401.14 3 true)
(126 388 2 20 61 88.78 467827.72 1.76 13 820 10 211 27 59 432 25990.43 38 true)
(63 132 6 7 4 33 56139.09 0.57 1 288 4 75 20 40 156 3118.84 9 false)
(23 76 0 6 33 40.24 31575.87 0.26 1 153 2 68 18 17 77 1754.21 11 true)
(12 15 0 3 6 8.75 2179.83 0.08 3 53 2 32 14 12 38 121.1 5 true)
(11 28 0 3 0 17.82 4881.96 0.09 1 59 1 14 14 11 31 271.22 5 true)
(30 60 0 8 9 30 22511.76 0.25 1 141 3 48 20 20 81 1250.65 15 true)
(46 70 5 12 9 28.27 33760.15 0.4 8 215 4 68 21 26 145 1875.56 23 true)
(61 104 19 5 50 31.57 46467.35 0.49 1 268 2 175 17 28 164 2581.52 9 true)
(18 29 0 3 2 15.71 4814.52 0.1 3 66 2 26 13 12 37 267.47 5 false)
(6 10 0 1 2 5 437.85 0.03 1 23 1 12 7 7 13 24.32 1 false)
(19 50 0 6 6 15 7800 0.17 1 104 2 35 12 20 54 433.33 11 true)
(30 49 2 3 7 27.56 16265.89 0.2 1 116 1 42 18 16 67 903.66 5 false)
(21 61 0 1 12 8.07 5476.14 0.23 1 125 1 48 9 34 64 304.23 1 false)
(12 22 0 1 0 2.75 483.48 0.06 1 45 1 15 3 12 23 26.86 1 true)
(60 160 0 13 24 90 152013.39 0.56 8 332 5 91 18 16 172 8445.19 25 true)
(28 65 0 11 0 34.53 26650.95 0.26 9 153 7 31 17 16 88 1480.61 21 false)
(135 175 15 32 12 51.79 132801.57 0.85 20 408 21 162 29 49 233 7377.86 58 true)
(20 54 0 1 1 7.2 3333.77 0.15 1 109 1 33 4 15 55 185.21 1 false)
))))