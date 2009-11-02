#|@relation ar4

@attribute total_loc numeric
@attribute blank_loc numeric
@attribute comment_loc numeric
@attribute code_and_comment_loc numeric
@attribute executable_loc numeric
@attribute unique_operands numeric
@attribute unique_operators numeric
@attribute total_operands numeric
@attribute total_operators numeric
@attribute halstead_vocabulary numeric
@attribute halstead_length numeric
@attribute halstead_volume numeric
@attribute halstead_level numeric
@attribute halstead_difficulty numeric
@attribute halstead_effort numeric
@attribute halstead_error numeric
@attribute halstead_time numeric
@attribute branch_count numeric
@attribute decision_count numeric
@attribute call_pairs numeric
@attribute condition_count numeric
@attribute multiple_condition_count numeric
@attribute cyclomatic_complexity numeric
@attribute cyclomatic_density numeric
@attribute decision_density numeric
@attribute design_complexity numeric
@attribute design_density numeric
@attribute normalized_cyclomatic_complexity numeric
@attribute formal_parameters numeric
@attribute defects {false true}
|#

(defun ar4 ()
  (data
   :name 'ar4
   :columns '($total_loc $blank_loc $comment_loc $code_and_comment_loc $executable_loc $unique_operands $unique_operators $total_operands $total_operators $halstead_vocabulary $halstead_length $halstead_volume $halstead_level $halstead_difficulty $halstead_effort $halstead_error $halstead_time $branch_count $decision_count $call_pairs $condition_count $multiple_condition_count $cyclomatic_complexity $cyclomatic_density $decision_density $design_complexity $design_density $normalized_cyclomatic_complexity $formal_parameters defects)
   :egs
   '( 
     (103 61 3 0 39 26 19 81 111 45 192 730 0.033788 29.5962 21605.1923 0.24333 1200.2885 16 8 2 7 1 8 0.20513 1.1429 2 0.25 0.07767 0 false)
     (53 22 5 0 26 18 16 38 54 34 92 324 0.059211 16.8889 5472 0.108 304 12 6 0 5 2 5 0.19231 1.2 0 0 0.09434 1 false)
     (25 10 1 0 14 12 14 42 58 26 100 325 0.040816 24.5 7962.5 0.10833 442.3611 2 1 0 1 0 2 0.14286 1 0 0 0.08 2 false)
     (73 22 8 1 43 25 12 67 97 37 164 592 0.062189 16.08 9519.36 0.19733 528.8533 30 15 0 15 7 9 0.2093 1 0 0 0.12329 0 false)
     (69 21 17 0 31 16 9 28 48 25 76 244 0.12698 7.875 1921.5 0.081333 106.75 26 13 0 13 6 8 0.25806 1 0 0 0.11594 0 false)
     (42 18 1 0 23 12 10 23 39 22 62 191 0.10435 9.5833 1830.4167 0.063667 101.6898 14 7 0 7 1 7 0.30435 1 0 0 0.16667 0 false)
     (69 26 10 0 33 17 12 39 64 29 103 346 0.07265 13.7647 4762.5882 0.11533 264.5882 24 12 0 12 4 9 0.27273 1 0 0 0.13043 0 false)
     (58 26 0 0 32 17 14 48 82 31 130 446 0.050595 19.7647 8815.0588 0.14867 489.7255 12 6 0 6 2 5 0.15625 1 0 0 0.086207 1 false)
     (45 20 2 0 23 27 12 61 77 39 138 505 0.07377 13.5556 6845.5556 0.16833 380.3086 4 2 0 2 0 3 0.13043 1 0 0 0.066667 0 false)
     (102 55 6 0 41 23 13 111 130 36 241 863 0.031878 31.3696 27071.9348 0.28767 1503.9964 10 5 2 5 2 4 0.097561 1 2 0.5 0.039216 0 false)
     (89 22 17 0 50 21 18 52 82 39 134 490 0.044872 22.2857 10920 0.16333 606.6667 24 12 1 11 4 9 0.18 1.0909 1 0.11111 0.10112 0 true)
     (58 25 10 0 23 19 11 35 56 30 91 309 0.098701 10.1316 3130.6579 0.103 173.9254 8 4 7 4 1 4 0.17391 1 7 1.75 0.068966 0 false)
     (530 235 78 0 217 60 12 329 478 72 807 3451 0.030395 32.9 113537.9 1.1503 6307.6611 176 88 31 88 34 55 0.25346 1 31 0.56364 0.10377 0 false)
     (907 395 209 4 303 112 20 560 829 132 1389 6782 0.02 50 339100 2.2607 18838.8889 210 105 54 104 31 75 0.24752 1.0096 54 0.72 0.08269 0 true)
     (142 62 14 0 66 44 17 114 174 61 288 1183 0.045408 22.0227 26052.8864 0.39433 1447.3826 34 17 12 17 7 11 0.16667 1 12 1.0909 0.077465 0 true)
     (16 3 0 0 13 18 10 21 31 28 52 173 0.17143 5.8333 1009.1667 0.057667 56.0648 4 2 0 2 0 3 0.23077 1 0 0 0.1875 0 false)
     (70 35 11 0 24 20 12 30 50 32 80 277 0.11111 9 2493 0.092333 138.5 12 6 6 5 1 6 0.25 1.2 6 1 0.085714 0 false)
     (185 81 18 0 86 42 15 99 173 57 272 1099 0.056566 17.6786 19428.75 0.36633 1079.375 52 26 3 26 2 25 0.2907 1 3 0.12 0.13514 0 false)
     (56 0 27 0 29 12 7 13 24 19 37 108 0.26374 3.7917 409.5 0.036 22.75 6 3 4 3 1 3 0.10345 1 4 1.3333 0.053571 0 false)
     (86 48 1 0 37 32 13 58 94 45 152 578 0.084881 11.7812 6809.5625 0.19267 378.309 20 10 11 9 2 9 0.24324 1.1111 11 1.2222 0.10465 0 false)
     (103 55 4 0 44 30 17 58 86 47 144 554 0.060852 16.4333 9104.0667 0.18467 505.7815 14 7 5 6 2 6 0.13636 1.1667 5 0.83333 0.058252 0 true)
     (50 23 4 0 23 18 6 23 47 24 70 222 0.26087 3.8333 851 0.074 47.2778 14 7 8 7 1 7 0.30435 1 8 1.1429 0.14 0 false)
     (240 121 5 1 114 65 19 185 249 84 434 1922 0.036984 27.0385 51967.9231 0.64067 2887.1068 48 24 28 24 4 20 0.17544 1 28 1.4 0.083333 0 true)
     (42 16 4 0 22 18 9 25 43 27 68 224 0.16 6.25 1400 0.074667 77.7778 12 6 6 5 2 5 0.22727 1.2 6 1.2 0.11905 0 false)
     (161 61 19 0 81 39 11 110 173 50 283 1107 0.064463 15.5128 17172.6923 0.369 954.0385 56 28 1 28 10 19 0.23457 1 1 0.052632 0.11801 0 true)
     (23 9 4 0 10 11 10 15 24 21 39 118 0.14667 6.8182 804.5455 0.039333 44.697 4 2 0 2 0 3 0.3 1 0 0 0.13043 0 false)
     (13 6 1 0 6 5 4 5 9 9 14 30 0.5 2 60 0.01 3.3333 0 0 2 0 0 1 0.16667 0 2 2 0.076923 0 false)
     (8 3 0 0 5 4 4 4 7 8 11 22 0.5 2 44 0.0073333 2.4444 0 0 1 0 0 1 0.2 0 1 1 0.125 0 false)
     (16 7 1 0 8 8 4 9 13 12 22 54 0.44444 2.25 121.5 0.018 6.75 0 0 2 0 0 1 0.125 0 2 2 0.0625 0 false)
     (45 23 4 0 18 19 9 27 41 28 68 226 0.15638 6.3947 1445.2105 0.075333 80.2895 8 4 1 4 0 5 0.27778 1 1 0.2 0.11111 0 false)
     (10 6 0 0 4 4 4 4 7 8 11 22 0.5 2 44 0.0073333 2.4444 0 0 1 0 0 1 0.25 0 1 1 0.1 0 false)
     (146 35 59 0 52 68 7 94 100 75 194 837 0.20669 4.8382 4049.6029 0.279 224.9779 2 1 1 0 0 2 0.038462 0 1 0.5 0.013699 0 false)
     (28 14 7 0 7 11 4 11 19 15 30 81 0.5 2 162 0.027 9 0 0 6 0 0 1 0.14286 0 6 6 0.035714 0 false)
     (112 0 96 0 16 31 6 42 49 37 91 328 0.24603 4.0645 1333.1613 0.10933 74.0645 0 0 0 0 0 1 0.0625 0 0 0 0.0089286 0 false)
     (181 75 58 1 48 87 6 115 117 93 232 1051 0.25217 3.9655 4167.7586 0.35033 231.5421 0 0 0 0 0 1 0.020833 0 0 0 0.0055249 0 true)
     (54 25 4 0 25 23 6 29 46 29 75 252 0.26437 3.7826 953.2174 0.084 52.9565 6 3 11 3 1 3 0.12 1 11 3.6667 0.055556 0 false)
     (29 13 3 0 13 16 9 31 36 25 67 215 0.1147 8.7188 1874.5312 0.071667 104.1406 2 1 1 0 0 2 0.15385 0 1 0.5 0.068966 0 false)
     (42 18 2 0 22 18 8 37 44 26 81 263 0.12162 8.2222 2162.4444 0.087667 120.1358 6 3 3 3 1 3 0.13636 1 3 1 0.071429 0 false)
     (86 30 20 0 36 31 11 46 76 42 122 455 0.12253 8.1613 3713.3871 0.15167 206.2993 16 8 14 8 2 7 0.19444 1 14 2 0.081395 0 true)
     (14 6 0 0 8 12 5 18 19 17 37 104 0.26667 3.75 390 0.034667 21.6667 0 0 0 0 0 1 0.125 0 0 0 0.071429 0 false)
     (191 100 13 0 78 44 22 132 194 66 326 1365 0.030303 33 45045 0.455 2502.5 48 24 2 23 6 19 0.24359 1.0435 2 0.10526 0.099476 0 true)
     (67 28 12 0 27 34 18 63 97 52 160 632 0.059965 16.6765 10539.5294 0.21067 585.5294 20 10 1 9 1 10 0.37037 1.1111 1 0.1 0.14925 0 false)
     (58 31 3 1 24 20 14 36 51 34 87 306 0.079365 12.6 3855.6 0.102 214.2 10 5 2 5 2 4 0.16667 1 2 0.5 0.068966 0 false)
     (52 21 8 0 23 35 10 49 63 45 112 426 0.14286 7 2982 0.142 165.6667 6 3 4 3 1 3 0.13043 1 4 1.3333 0.057692 0 false)
     (12 3 0 0 9 10 8 11 18 18 29 83 0.22727 4.4 365.2 0.027667 20.2889 4 2 0 2 0 3 0.33333 1 0 0 0.25 0 false)
     (31 14 2 0 15 15 10 28 38 25 66 212 0.10714 9.3333 1978.6667 0.070667 109.9259 6 3 0 3 1 3 0.2 1 0 0 0.096774 4 false)
     (290 141 11 0 138 41 20 146 243 61 389 1599 0.028082 35.6098 56940 0.533 3163.3333 86 43 10 43 14 29 0.21014 1 10 0.34483 0.1 0 false)
     (21 10 2 1 9 16 5 20 21 21 41 124 0.32 3.125 387.5 0.041333 21.5278 0 0 0 0 0 1 0.11111 0 0 0 0.047619 3 false)
     (13 8 0 0 5 5 4 6 9 9 15 32 0.41667 2.4 76.8 0.010667 4.2667 0 0 1 0 0 1 0.2 0 1 1 0.076923 0 false)
     (16 10 0 0 6 9 8 10 15 17 25 70 0.225 4.4444 311.1111 0.023333 17.284 2 1 1 1 0 2 0.33333 1 1 0.5 0.125 0 false)
     (11 5 0 0 6 7 4 7 11 11 18 43 0.5 2 86 0.014333 4.7778 0 0 2 0 0 1 0.16667 0 2 2 0.090909 0 false)
     (33 17 0 0 16 25 5 30 32 30 62 210 0.33333 3 630 0.07 35 0 0 0 0 0 1 0.0625 0 0 0 0.030303 0 false)
     (14 8 0 0 6 7 4 9 11 11 20 47 0.38889 2.5714 120.8571 0.015667 6.7143 0 0 0 0 0 1 0.16667 0 0 0 0.071429 0 false)
     (47 14 3 0 30 32 7 45 57 39 102 373 0.20317 4.9219 1835.8594 0.12433 101.9922 10 5 0 5 2 4 0.13333 1 0 0 0.085106 0 false)
     (14 8 0 0 6 8 8 12 21 16 33 91 0.16667 6 546 0.030333 30.3333 2 1 1 1 0 2 0.33333 1 1 0.5 0.14286 0 false)
     (21 5 0 0 16 8 8 23 31 16 54 149 0.086957 11.5 1713.5 0.049667 95.1944 8 4 1 4 1 4 0.25 1 1 0.25 0.19048 0 false)
     (73 12 2 0 59 32 13 89 119 45 208 791 0.055315 18.0781 14299.7969 0.26367 794.4332 42 21 0 21 3 19 0.32203 1 0 0 0.26027 0 false)
     (67 17 3 0 47 28 13 70 92 41 162 601 0.061538 16.25 9766.25 0.20033 542.5694 20 10 0 10 1 10 0.21277 1 0 0 0.14925 0 false)
     (18 1 0 0 17 11 9 16 25 20 41 122 0.15278 6.5455 798.5455 0.040667 44.3636 8 4 0 4 2 3 0.17647 1 0 0 0.16667 0 false)
     (20 6 1 0 13 11 7 13 23 18 36 104 0.24176 4.1364 430.1818 0.034667 23.899 2 1 5 1 0 2 0.15385 1 5 2.5 0.1 0 false)
     (27 4 5 0 18 22 11 30 47 33 77 269 0.13333 7.5 2017.5 0.089667 112.0833 8 4 4 4 1 4 0.22222 1 4 1 0.14815 0 false)
     (250 47 22 0 181 65 28 226 357 93 583 2642 0.020544 48.6769 128604.4308 0.88067 7144.6906 78 39 6 35 8 31 0.17127 1.1143 6 0.19355 0.124 0 true)
     (57 4 1 1 52 21 10 53 75 31 128 439 0.079245 12.619 5539.7619 0.14633 307.7646 18 9 3 9 4 6 0.11538 1 3 0.5 0.10526 0 false)
     (11 0 0 0 11 4 6 5 11 10 16 36 0.26667 3.75 135 0.012 7.5 4 2 0 2 1 2 0.18182 1 0 0 0.18182 0 false)
     (252 119 17 0 116 67 20 159 242 87 401 1790 0.042138 23.7313 42479.1045 0.59667 2359.9502 70 35 10 35 9 26 0.22414 1 10 0.38462 0.10317 0 true)
     (25 17 0 0 8 10 6 11 16 16 27 74 0.30303 3.3 244.2 0.024667 13.5667 2 1 0 1 0 2 0.25 1 0 0 0.08 0 false)
     (13 6 0 0 7 9 4 10 13 13 23 58 0.45 2.2222 128.8889 0.019333 7.1605 0 0 1 0 0 1 0.14286 0 1 1 0.076923 0 false)
     (74 31 8 0 35 24 11 42 62 35 104 369 0.1039 9.625 3551.625 0.123 197.3125 24 12 3 12 6 7 0.2 1 3 0.42857 0.094595 0 false)
     (52 23 11 0 18 14 17 37 62 31 99 339 0.044515 22.4643 7615.3929 0.113 423.0774 8 4 0 3 0 5 0.27778 1.3333 0 0 0.096154 3 true)
     (47 22 5 0 20 13 11 38 58 24 96 305 0.062201 16.0769 4903.4615 0.10167 272.4145 2 1 5 0 0 2 0.1 0 5 2.5 0.042553 3 false)
     (89 38 6 0 45 29 20 75 114 49 189 735 0.038667 25.8621 19008.6207 0.245 1056.0345 14 7 5 3 1 7 0.15556 2.3333 5 0.71429 0.078652 0 true)
     (24 9 1 0 14 16 16 25 44 32 69 239 0.08 12.5 2987.5 0.079667 165.9722 4 2 2 1 0 3 0.21429 2 2 0.66667 0.125 1 false)
     (46 24 2 0 20 15 13 36 56 28 92 306 0.064103 15.6 4773.6 0.102 265.2 2 1 2 0 0 2 0.1 0 2 1 0.043478 0 false)
     (52 27 7 0 18 12 13 29 57 25 86 276 0.06366 15.7083 4335.5 0.092 240.8611 8 4 0 3 0 5 0.27778 1.3333 0 0 0.096154 3 false)
     (68 25 16 16 27 38 5 103 105 43 208 782 0.14757 6.7763 5299.0789 0.26067 294.3933 0 0 0 0 0 1 0.037037 0 0 0 0.014706 0 false)
     (75 25 16 16 34 43 10 111 123 53 234 929 0.077477 12.907 11990.5814 0.30967 666.1434 4 2 1 2 1 2 0.058824 1 1 0.5 0.026667 0 false)
     (6 3 0 0 3 5 6 5 10 11 15 35 0.33333 3 105 0.011667 5.8333 0 0 1 0 0 1 0.33333 0 1 1 0.16667 0 false)
     (16 4 3 0 9 7 12 14 29 19 43 126 0.083333 12 1512 0.042 84 4 2 0 1 0 3 0.33333 2 0 0 0.1875 2 false)
     (22 3 0 0 19 23 4 35 37 27 72 237 0.32857 3.0435 721.3043 0.079 40.0725 0 0 0 0 0 1 0.052632 0 0 0 0.045455 0 false)
     (47 22 6 0 19 17 17 36 61 34 97 342 0.055556 18 6156 0.114 342 10 5 1 4 1 5 0.26316 1.25 1 0.2 0.10638 0 true)
     (50 25 1 0 24 14 14 26 51 28 77 256 0.076923 13 3328 0.085333 184.8889 12 6 1 5 1 6 0.25 1.2 1 0.16667 0.12 0 true)
     (128 73 3 0 52 26 16 72 108 42 180 672 0.045139 22.1538 14887.3846 0.224 827.0769 28 14 1 13 3 12 0.23077 1.0769 1 0.083333 0.09375 0 false)
     (136 64 4 0 68 28 13 68 117 41 185 687 0.063348 15.7857 10844.7857 0.229 602.4881 44 22 1 22 8 14 0.20588 1 1 0.071429 0.10294 0 false)
     (71 39 1 0 31 28 14 87 126 42 213 796 0.045977 21.75 17313 0.26533 961.8333 20 10 0 10 1 10 0.32258 1 0 0 0.14085 0 false)
     (244 84 46 1 114 45 17 232 380 62 612 2525 0.022819 43.8222 110651.1111 0.84167 6147.284 76 38 0 38 17 22 0.19298 1 0 0 0.090164 0 true)
     (22 6 11 0 5 4 7 7 11 11 18 43 0.16327 6.125 263.375 0.014333 14.6319 2 1 0 0 0 2 0.4 0 0 0 0.090909 1 false)
     (25 5 0 0 20 8 10 41 62 18 103 297 0.039024 25.625 7610.625 0.099 422.8125 16 8 0 8 4 5 0.25 1 0 0 0.2 1 false)
     (26 13 3 0 10 6 5 6 14 11 20 47 0.4 2.5 117.5 0.015667 6.5278 4 2 3 2 1 2 0.2 1 3 1.5 0.076923 0 false)
     (61 21 6 0 34 21 12 30 54 33 84 293 0.11667 8.5714 2511.4286 0.097667 139.5238 18 9 3 9 2 7 0.20588 1 3 0.42857 0.11475 0 false)
     (112 52 4 0 56 45 15 76 115 60 191 782 0.078947 12.6667 9905.3333 0.26067 550.2963 36 18 5 18 7 12 0.21429 1 5 0.41667 0.10714 0 false)
     (131 59 13 0 59 44 17 87 139 61 226 929 0.0595 16.8068 15613.5341 0.30967 867.4186 40 20 5 20 7 14 0.23729 1 5 0.35714 0.10687 0 false)
     (153 64 28 0 61 22 14 81 132 36 213 763 0.038801 25.7727 19664.5909 0.25433 1092.4773 44 22 4 22 7 16 0.2623 1 4 0.25 0.10458 0 false)
     (82 36 6 0 40 30 12 52 78 42 130 485 0.096154 10.4 5044 0.16167 280.2222 30 15 4 15 6 10 0.25 1 4 0.4 0.12195 0 false)
     (121 56 12 0 53 35 19 80 113 54 193 769 0.046053 21.7143 16698.2857 0.25633 927.6825 26 13 6 13 3 10 0.18868 1 6 0.6 0.082645 3 false)
     (269 112 30 0 127 50 26 168 267 76 435 1883 0.022894 43.68 82249.44 0.62767 4569.4133 64 32 8 32 10 22 0.17323 1 8 0.36364 0.081784 0 true)
     (324 142 38 1 144 94 21 261 401 115 662 3141 0.0343 29.1543 91573.516 1.047 5087.4176 82 41 6 41 5 37 0.25694 1 6 0.16216 0.1142 1 true)
     (114 24 27 0 63 29 12 61 98 41 159 590 0.079235 12.6207 7446.2069 0.19667 413.6782 44 22 0 22 10 13 0.20635 1 0 0 0.11404 0 true)
     (68 29 1 0 38 30 14 60 95 44 155 586 0.071429 14 8204 0.19533 455.7778 32 16 3 16 7 10 0.26316 1 3 0.3 0.14706 0 false)
     (149 72 16 0 61 46 17 114 170 63 284 1176 0.047472 21.0652 24772.6957 0.392 1376.2609 42 21 1 21 6 16 0.2623 1 1 0.0625 0.10738 0 false)
     (27 9 1 0 17 19 9 21 35 28 56 186 0.20106 4.9737 925.1053 0.062 51.3947 6 3 3 3 1 3 0.17647 1 3 1 0.11111 0 true)
     (51 21 3 0 27 30 4 53 55 34 108 380 0.28302 3.5333 1342.6667 0.12667 74.5926 0 0 0 0 0 1 0.037037 0 0 0 0.019608 0 false)
     (32 11 3 0 18 7 16 20 42 23 62 194 0.04375 22.8571 4434.2857 0.064667 246.3492 10 5 0 4 1 5 0.27778 1.25 0 0 0.15625 2 false)
     (71 27 9 0 35 19 16 53 80 35 133 472 0.044811 22.3158 10533.0526 0.15733 585.1696 12 6 0 5 1 6 0.17143 1.2 0 0 0.084507 0 false)
     (79 40 5 0 34 23 10 52 79 33 131 458 0.088462 11.3043 5177.3913 0.15267 287.6329 18 9 2 9 2 8 0.23529 1 2 0.25 0.10127 0 false)
     (19 8 0 0 11 8 14 19 29 22 48 148 0.06015 16.625 2460.5 0.049333 136.6944 4 2 0 1 0 3 0.27273 2 0 0 0.15789 2 false)
     (119 59 13 0 47 20 23 68 107 43 175 658 0.025575 39.1 25727.8 0.21933 1429.3222 22 11 2 10 2 10 0.21277 1.1 2 0.2 0.084034 0 false)
     (9 2 0 0 7 5 6 6 11 11 17 40 0.27778 3.6 144 0.013333 8 2 1 1 1 0 2 0.28571 1 1 0.5 0.22222 0 false)
     )))