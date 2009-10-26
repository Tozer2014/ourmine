#|@relation shared_MW1

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

(defun shared_MW1 ()
  (data
   :name 'shared_MW1
   :columns '(loc v(g) ev(g) iv(g) v l d i e b t lOCode lOCcomment locCodeAndComment uniq_Op uniq_Opnd total_Opnd branchCount defects)
   :egs
   '( 
(6 9 76.11 0 1 3 5.4 14.09 410.98 0.03 1 22 1 12 6 5 13 22.83 1 false)
(12 25 293.25 0 3 4 6.94 42.23 2036.45 0.1 1 61 3 20 10 18 36 113.14 5 false)
(20 33 423.93 0 6 8 18.44 22.99 7817.84 0.14 1 82 3 33 19 17 49 434.32 11 false)
(16 18 178.41 0 4 1 4.15 42.95 741.1 0.06 4 42 4 20 6 13 24 41.17 7 false)
(7 18 154.29 0 1 4 3.46 44.57 534.07 0.05 1 37 1 13 5 13 19 29.67 1 false)
(11 20 203.56 0 3 0 6.43 31.66 1308.6 0.07 1 45 3 13 9 14 25 72.7 5 false)
(58 72 1129.46 0 9 15 28.29 39.93 31947.46 0.38 1 170 8 85 44 56 98 1774.86 12 false)
(16 41 390.14 13 1 4 3.73 104.67 1454.15 0.13 1 83 1 23 4 22 42 80.79 1 false)
(10 9 110.45 0 2 1 7.71 14.32 852.01 0.04 1 26 1 13 12 7 17 47.33 3 false)
(16 35 377.83 0 5 8 22.88 16.51 8646.51 0.13 4 77 2 29 17 13 42 480.36 9 false)
(15 23 267.35 0 3 3 15.61 17.13 4172.6 0.09 1 53 2 24 19 14 30 231.81 5 false)
(17 39 352.3 0 1 0 7.31 48.18 2576.16 0.12 1 79 1 20 6 16 40 143.12 1 false)
(6 7 58.81 0 1 0 6.13 9.6 360.21 0.02 1 17 1 8 7 4 10 20.01 1 false)
(11 21 210.91 0 2 21 8.88 23.74 1873.84 0.07 1 46 1 40 11 13 25 104.1 3 false)
(17 19 223.48 0 3 6 5.59 39.99 1248.86 0.07 1 47 3 27 10 17 28 69.38 5 false)
(28 29 380.05 0 2 0 12.89 29.49 4898.45 0.13 1 67 2 31 24 27 38 272.14 3 false)
(12 14 176.42 0 4 0 6.42 27.49 1132.02 0.06 1 39 3 15 11 12 25 62.89 7 false)
(20 19 236.84 0 4 0 7.46 31.73 1767.82 0.08 1 51 4 24 11 14 32 98.21 6 false)
(13 22 193.26 0 2 5 3.44 56.22 664.34 0.06 1 44 2 25 5 16 22 36.91 3 false)
(44 94 1104.94 0 6 13 16.45 67.17 18176.24 0.37 4 192 5 73 14 40 98 1009.79 11 false)
(5 6 36.5 0 1 0 2.25 16.21 82.12 0.01 1 13 1 6 3 4 7 4.56 1 false)
(3 6 51.89 0 1 3 5.25 9.88 272.43 0.02 1 15 1 8 7 4 9 15.14 1 false)
(11 17 201.74 0 1 3 6.07 33.23 1224.84 0.07 1 44 1 19 10 14 27 68.05 1 false)
(12 22 197.65 0 1 5 2.59 76.37 511.58 0.07 1 45 1 25 4 17 23 28.42 1 false)
(10 20 204.46 0 5 5 10.77 18.99 2201.88 0.07 1 43 4 20 14 13 23 122.33 9 false)
(20 25 288.44 0 3 3 9.38 30.77 2704.14 0.1 1 60 3 29 12 16 35 150.23 4 false)
(6 9 76.11 0 1 1 5.4 14.09 410.98 0.03 1 22 1 10 6 5 13 22.83 1 false)
(9 5 53.15 0 2 1 3.75 14.17 199.32 0.02 1 16 1 12 6 4 11 11.07 3 false)
(12 22 194.49 0 1 5 2.75 70.72 534.84 0.06 1 45 1 27 4 16 23 29.71 1 false)
(6 17 145.95 0 1 5 2.43 60.1 354.44 0.05 1 35 1 12 4 14 18 19.69 1 false)
(30 58 757.88 0 4 0 13.1 57.87 9925.73 0.25 1 138 4 36 14 31 80 551.43 7 false)
(9 19 223.48 0 4 1 7.6 29.41 1698.45 0.07 4 47 2 13 12 15 28 94.36 7 true)
(14 29 258.64 0 5 4 14.5 17.84 3750.38 0.09 1 58 2 21 11 11 29 208.35 9 false)
(32 54 686.36 0 5 4 6.59 104.23 4519.95 0.23 1 121 5 46 10 41 67 251.11 9 true)
(13 28 292.3 0 4 3 5.73 51.04 1674.07 0.1 1 59 4 22 9 22 31 93 7 false)
(18 24 275.78 1 2 4 7.06 39.07 1946.71 0.09 1 58 2 26 10 17 34 108.15 3 false)
(12 28 377.4 0 3 1 14 26.96 5283.66 0.13 1 73 3 17 18 18 45 293.54 4 false)
(80 396 6182.28 0 1 6 31.46 196.53 194481.83 2.06 1 889 1 97 17 107 493 10804.55 1 false)
(4 4 23.26 0 1 0 2 11.63 46.53 0.01 1 9 1 5 3 3 5 2.58 1 false)
(12 13 146.95 0 2 5 9.75 15.07 1432.72 0.05 1 34 2 20 12 8 21 79.6 3 false)
(11 14 131.77 0 2 0 7.7 17.11 1014.63 0.04 1 30 2 14 11 10 16 56.37 3 false)
(18 32 389.9 0 7 3 11 35.45 4288.91 0.13 1 82 6 24 11 16 50 238.27 13 false)
(16 22 206.44 0 3 6 5.5 37.53 1135.41 0.07 1 47 3 28 7 14 25 63.08 5 false)
(10 14 129.66 0 2 0 5.73 22.64 742.59 0.04 1 30 2 12 9 11 16 41.25 3 false)
(5 7 47.55 0 1 1 1.75 27.17 83.21 0.02 1 15 1 7 3 6 8 4.62 1 false)
(5 6 57.36 0 1 2 4.2 13.66 240.91 0.02 1 16 1 10 7 5 10 13.38 1 false)
(38 51 600.05 1 20 3 6.18 97.07 3709.37 0.2 20 112 20 45 8 33 61 206.08 39 false)
(12 14 178.81 0 4 0 5.92 30.19 1059.13 0.06 1 39 3 15 11 13 25 58.84 7 true)
(30 39 510.09 0 5 7 15.84 32.18 8081.71 0.17 1 105 1 40 13 16 66 448.98 6 false)
(21 54 614.01 0 6 3 21.86 28.09 13420.45 0.2 1 117 2 28 17 21 63 745.58 8 false)
(14 18 237.74 2 6 0 8.36 28.45 1986.86 0.08 1 50 2 18 13 14 32 110.38 7 false)
(17 32 253.95 0 1 6 5.82 43.65 1477.51 0.08 1 65 1 26 4 11 33 82.08 1 false)
(6 8 70.31 0 1 3 3.43 20.51 241.06 0.02 1 19 1 12 6 7 11 13.39 1 false)
(77 160 2608.07 0 8 13 37.89 68.82 98831.96 0.87 5 408 6 109 27 57 248 5490.66 15 false)
(18 28 302.21 0 3 4 4.08 74.01 1234.01 0.1 1 61 3 27 7 24 33 68.56 5 false)
(28 59 754.43 0 6 16 17.52 43.07 13214.36 0.25 3 133 5 54 19 32 74 734.13 11 false)
(23 33 340.06 0 3 1 5.25 64.76 1785.31 0.11 1 70 3 28 7 22 37 99.18 5 false)
(77 133 2158.17 0 26 15 26.99 79.98 58239.35 0.72 1 327 26 118 28 69 194 3235.52 37 true)
(64 122 1464.5 0 7 7 25.29 57.9 37041.01 0.49 1 250 4 81 17 41 128 2057.83 11 false)
(14 35 387.64 0 11 1 8.75 44.3 3391.89 0.13 11 79 1 16 10 20 44 188.44 21 false)
(23 31 381.47 0 3 18 11.19 34.08 4270.38 0.13 1 77 3 48 13 18 46 237.24 5 false)
(8 13 125.34 0 2 0 12.07 10.38 1512.98 0.04 1 29 2 11 13 7 16 84.05 3 false)
(5 7 46.51 0 1 0 2.33 19.93 108.52 0.02 1 14 1 7 4 6 7 6.03 1 false)
(50 107 1398 0 9 16 20.93 66.78 29266.83 0.47 3 233 7 78 18 46 126 1625.93 17 false)
(10 15 174.17 0 4 0 5.45 31.93 949.99 0.06 1 41 2 11 8 11 26 52.78 7 true)
(13 17 197.65 0 3 4 17 11.63 3360.12 0.07 1 45 2 20 14 7 28 186.67 5 false)
(26 35 461.25 0 4 2 11.67 39.54 5381.22 0.15 1 94 1 31 12 18 59 298.96 5 false)
(13 19 190.16 0 2 2 4.07 46.71 774.24 0.06 1 44 2 20 6 14 25 43.01 3 false)
(7 19 170.97 0 3 5 11.88 14.4 2030.23 0.06 1 41 2 16 10 8 22 112.79 5 false)
(20 45 549.19 0 2 4 10.16 54.05 5580.43 0.18 1 100 2 29 14 31 55 310.02 3 false)
(19 28 286.62 0 2 2 4.45 64.34 1276.77 0.1 1 59 2 29 7 22 31 70.93 3 false)
(40 108 1382.74 0 9 5 25.41 54.41 35137.98 0.46 1 245 1 54 16 34 137 1952.11 16 false)
(11 19 228.23 0 1 0 7.6 30.03 1734.58 0.08 1 48 1 13 12 15 29 96.37 1 false)
(17 19 262.33 3 7 0 8.87 29.59 2326 0.09 1 54 2 23 14 15 35 129.22 8 false)
(20 36 361.37 0 1 17 5.14 70.27 1858.48 0.12 1 76 1 49 6 21 40 103.25 1 true)
(25 53 580.09 16 2 0 5.62 103.2 3260.81 0.19 1 109 2 27 7 33 56 181.16 3 false)
(8 14 120.93 0 3 0 3.5 34.55 423.25 0.04 1 29 3 12 6 12 15 23.51 5 false)
(9 19 223.48 0 4 1 7.6 29.41 1698.45 0.07 4 47 2 13 12 15 28 94.36 7 false)
(6 13 104 0 1 1 2.95 35.2 307.27 0.03 1 26 1 10 5 11 13 17.07 1 false)
(7 25 275.94 0 1 0 5.47 50.46 1509.03 0.09 1 61 1 8 7 16 36 83.84 1 false)
(61 120 1773.65 0 18 8 23.23 76.37 41194.43 0.59 12 276 8 83 24 62 156 2288.58 35 false)
(6 14 133.98 0 2 5 7 19.14 937.86 0.04 1 31 2 15 10 10 17 52.1 3 false)
(12 14 129.66 0 3 2 4.67 27.78 605.07 0.04 1 30 1 18 8 12 16 33.61 5 false)
(7 11 78.87 0 1 8 2.75 28.68 216.89 0.03 1 22 1 21 4 8 11 12.05 1 false)
(12 15 157.17 0 1 12 3.46 45.41 544.06 0.05 1 37 1 34 6 13 22 30.23 1 false)
(17 61 680.99 0 3 10 11.09 61.4 7552.8 0.23 3 124 2 39 12 33 63 419.6 5 false)
(37 87 1073.46 0 6 8 26.33 40.77 28263.16 0.36 4 181 5 53 23 38 94 1570.18 11 false)
(10 17 145.95 0 1 1 2.43 60.1 354.44 0.05 1 35 1 15 4 14 18 19.69 1 false)
(44 80 1109.4 0 8 11 9.12 121.61 10120.84 0.37 1 181 8 73 13 57 101 562.27 15 true)
(64 126 1623.53 0 18 5 19.83 81.86 32200.08 0.54 10 264 12 81 17 54 138 1788.89 35 false)
(24 26 354.12 0 4 5 9.04 39.16 3202.49 0.12 1 67 4 36 16 23 41 177.92 6 false)
(32 40 595.16 0 7 0 16.3 36.52 9698.89 0.2 1 106 7 38 22 27 66 538.83 10 false)
(111 155 2168.46 1 14 25 36.56 59.32 79271.67 0.72 14 345 8 171 25 53 190 4403.98 27 false)
(18 28 293.25 0 3 11 10.5 27.93 3079.11 0.1 1 61 1 34 12 16 33 171.06 5 false)
(21 37 361.66 0 2 3 10.17 35.54 3679.85 0.12 1 73 2 30 11 20 36 204.44 3 false)
(12 17 246.12 0 3 1 15.11 16.29 3719.21 0.08 1 53 1 15 16 9 36 206.62 5 false)
(12 11 142.62 0 4 0 5.5 25.93 784.43 0.05 1 33 3 15 10 10 22 43.58 7 false)
(22 73 946.27 1 9 1 21.02 45.03 19886.07 0.32 1 166 2 28 19 33 93 1104.78 10 false)
(10 11 104 0 2 2 5.5 18.91 572 0.03 1 26 2 14 8 8 15 31.78 3 false)
(48 59 873.51 0 3 4 13.77 63.45 12025.31 0.29 1 160 3 65 14 30 101 668.07 5 false)
(5 12 92.51 0 1 0 3.75 24.67 346.92 0.03 1 25 1 6 5 8 13 19.27 1 false)
(28 41 418.76 0 2 0 10.25 40.86 4292.33 0.14 1 81 2 33 12 24 40 238.46 3 false)
(9 43 504.77 0 2 8 8.6 58.69 4341.04 0.17 1 105 2 23 8 20 62 241.17 3 false)
(11 12 100.38 0 2 2 3 33.46 301.14 0.03 1 28 2 17 4 8 16 16.73 3 false)
(5 7 60.94 0 1 6 4.9 12.44 298.63 0.02 1 17 1 14 7 5 10 16.59 1 false)
(5 6 57.36 0 1 3 4.2 13.66 240.91 0.02 1 16 1 12 7 5 10 13.38 1 false)
(24 42 494.94 0 5 2 5.25 94.27 2598.43 0.16 1 93 5 31 8 32 51 144.36 9 false)
(5 7 49.83 0 1 2 1.5 33.22 74.74 0.02 1 15 1 9 3 7 8 4.15 1 false)
(43 90 1353.63 0 19 5 27.19 49.79 36801.7 0.45 4 216 3 55 29 48 126 2044.54 24 false)
(51 190 2629.2 0 4 13 30.74 85.54 80809.25 0.88 1 405 3 83 22 68 215 4489.4 7 false)
(4 9 82.04 0 1 1 5.14 15.95 421.94 0.03 1 21 1 6 8 7 12 23.44 1 false)
(5 8 55.35 0 1 0 2.29 24.22 126.52 0.02 1 16 1 7 4 7 8 7.03 1 false)
(59 92 1633.89 0 19 1 25.17 64.91 41124.72 0.54 1 257 19 76 29 53 165 2284.71 22 false)
(39 48 604.25 0 7 3 6.44 93.84 3890.76 0.2 5 106 7 48 11 41 58 216.15 13 false)
(11 21 222.97 0 8 14 12.6 17.7 2809.44 0.07 5 50 7 29 12 10 29 156.08 15 false)
(26 94 1127.37 0 4 16 22.86 49.31 25777.05 0.38 1 195 1 49 18 37 101 1432.06 7 false)
(10 12 151.27 0 4 0 4 37.82 605.07 0.05 1 35 2 11 8 12 23 33.61 7 false)
(17 45 432.44 0 1 3 6.75 64.06 2918.97 0.14 1 92 1 23 6 20 47 162.17 1 false)
(5 13 104 0 2 0 6.5 16 676 0.03 1 26 1 7 8 8 13 37.56 3 false)
(4 4 25.27 0 1 0 1.5 16.84 37.9 0.01 1 9 1 5 3 4 5 2.11 1 false)
(34 58 746.76 0 4 4 6.07 123.03 4532.64 0.25 1 131 4 50 9 43 73 251.81 7 false)
(5 9 73.08 0 1 0 4.5 16.23 328.87 0.02 1 22 1 6 5 5 13 18.27 1 false)
(49 90 1174.88 0 12 8 16.2 72.52 19033.06 0.39 7 193 9 74 18 50 103 1057.39 23 false)
(9 17 162.52 0 1 22 5.23 31.07 850.08 0.05 1 37 1 38 8 13 20 47.23 1 false)
(7 16 144.43 0 1 2 8.89 16.25 1283.82 0.05 1 34 1 12 10 9 18 71.32 1 false)
(39 55 748.14 0 6 2 25.54 29.3 19104.17 0.25 1 130 5 49 26 28 75 1061.34 10 false)
(12 10 69.49 0 1 2 3.5 19.85 243.2 0.02 1 17 1 17 7 10 7 13.51 1 false)
(14 12 138.3 0 2 0 7.33 18.86 1014.21 0.05 1 32 2 15 11 9 20 56.35 3 false)
(52 95 1258.36 0 13 11 13.19 95.37 16603.31 0.42 7 206 10 77 15 54 111 922.41 25 true)
(9 9 69.19 0 2 0 3.75 18.45 259.45 0.02 1 20 2 11 5 6 11 14.41 3 false)
(14 15 185.75 0 2 0 6.92 26.83 1285.99 0.06 1 40 2 18 12 13 25 71.44 3 false)
(7 11 101.58 0 1 0 4.81 21.11 488.85 0.03 1 26 1 10 7 8 15 27.16 1 false)
(11 18 168.56 0 2 1 3 56.19 505.67 0.06 1 39 2 17 5 15 21 28.09 3 false)
(5 6 50.19 0 2 1 3 16.73 150.57 0.02 1 14 2 8 6 6 8 8.36 3 false)
(3 2 11.61 0 1 0 1.5 7.74 17.41 0 1 5 1 4 3 2 3 0.97 1 false)
(56 86 1241.24 0 15 3 18.88 65.75 23432.15 0.41 1 211 15 76 18 41 125 1301.79 25 true)
(48 63 857.48 8 6 42 18.53 46.28 15888.57 0.29 1 149 5 111 20 34 86 882.7 11 false)
(17 24 310.23 0 7 3 8.8 35.25 2730.02 0.1 1 66 6 23 11 15 42 151.67 13 false)
(14 18 211.52 0 2 4 4.76 44.39 1007.83 0.07 1 45 2 21 9 17 27 55.99 3 false)
(16 21 194.51 0 4 4 6.75 28.82 1312.96 0.06 1 43 3 24 9 14 22 72.94 7 false)
(48 117 1441.06 0 12 13 47.53 30.32 68495.54 0.48 1 246 2 71 26 32 129 3805.31 23 false)
(26 37 442.8 0 4 14 10.02 44.19 4437.26 0.15 3 85 2 51 13 24 48 246.51 7 false)
(26 33 399.14 0 8 12 14.93 26.74 5958.66 0.13 5 75 4 46 19 21 42 331.04 15 false)
(9 18 162.52 0 3 0 4.5 36.11 731.32 0.05 1 37 3 13 7 14 19 40.63 5 false)
(26 48 615.65 0 4 6 8 76.96 4925.18 0.21 1 108 4 41 13 39 60 273.62 7 false)
(10 9 116.76 0 3 0 4.5 25.95 525.41 0.04 1 28 3 12 9 9 19 29.19 4 false)
(28 56 677.66 0 4 3 6.63 102.19 4493.95 0.23 1 122 4 42 9 38 66 249.66 7 false)
(20 38 433.4 0 3 6 4.9 88.39 2125.07 0.14 1 82 3 38 8 31 44 118.06 5 false)
(67 90 1267.06 1 16 32 17.37 72.95 22006.83 0.42 12 201 8 123 22 57 111 1222.6 31 true)
(3 3 19.65 0 1 0 2 9.83 39.3 0.01 1 7 1 4 4 3 4 2.18 1 false)
(4 4 25.27 0 1 0 1.5 16.84 37.9 0.01 1 9 1 5 3 4 5 2.11 1 false)
(10 8 95.18 0 1 2 4 23.8 380.74 0.03 1 25 1 15 7 7 17 21.15 1 false)
(38 55 729.11 0 5 3 14.86 49.05 10838.14 0.24 1 125 5 51 20 37 70 602.12 7 false)
(13 10 129.66 3 4 0 6.11 21.22 792.35 0.04 1 30 2 18 11 9 20 44.02 5 false)
(16 22 237.74 0 3 2 5.5 43.23 1307.59 0.08 1 50 3 26 9 18 28 72.64 5 false)
(8 12 83.05 0 1 1 2.57 32.29 213.55 0.03 1 25 1 11 3 7 13 11.86 1 false)
(20 21 249.98 0 3 0 5.83 42.85 1458.23 0.08 1 52 3 22 10 18 31 81.01 5 false)
(23 18 237.74 2 6 0 8.36 28.45 1986.86 0.08 1 50 2 30 13 14 32 110.38 7 false)
(20 19 242.5 0 5 0 7.6 31.91 1842.99 0.08 1 51 5 24 12 15 32 102.39 8 false)
(4 3 30 0 1 2 4.5 6.67 135 0.01 1 10 1 8 6 2 7 7.5 1 false)
(26 33 386.65 0 3 2 6.87 56.24 2658.2 0.13 1 76 3 31 10 24 43 147.68 5 false)
(11 21 230.32 0 1 1 7.7 29.91 1773.48 0.08 1 49 1 17 11 15 28 98.53 1 false)
(52 91 1135.35 0 7 5 8.18 138.63 9298.52 0.38 1 193 7 68 9 50 102 516.58 13 false)
(16 24 332.93 2 8 0 10 33.29 3329.3 0.11 1 66 2 21 15 18 42 184.96 9 false)
(15 70 769.18 2 1 9 16.58 46.39 12752.14 0.26 1 160 1 31 9 19 90 708.45 1 false)
(9 8 85.95 0 5 6 4.57 18.8 392.92 0.03 5 22 3 17 8 7 14 21.83 9 false)
(49 86 1201.43 0 11 0 32.25 37.25 38746.22 0.4 8 201 6 61 27 36 115 2152.57 19 false)
(9 10 97.67 0 2 4 7.5 13.02 732.54 0.03 1 25 1 17 9 6 15 40.7 3 false)
(14 20 218.72 0 4 7 10.77 20.31 2355.5 0.07 3 46 1 27 14 13 26 130.86 7 false)
(17 22 237.74 0 5 0 8.8 27.02 2092.15 0.08 1 50 3 23 12 15 28 116.23 9 false)
(46 114 1802.88 0 22 4 33.06 54.53 59603.26 0.6 1 286 21 60 29 50 172 3311.29 28 false)
(35 51 726.1 0 9 10 13.19 55.05 9577.07 0.24 1 133 5 54 15 29 82 532.06 17 false)
(30 53 561.08 0 1 11 11.16 50.29 6260.44 0.19 1 118 1 55 8 19 65 347.8 1 false)
(3 3 28.53 0 1 1 3 9.51 85.59 0.01 1 9 1 5 6 3 6 4.75 1 false)
(15 21 284.6 2 7 0 9.19 30.98 2614.76 0.09 1 58 2 19 14 16 37 145.26 8 false)
(67 79 1439.48 0 21 2 20.1 71.63 28928.56 0.48 1 224 21 91 29 57 145 1607.14 25 false)
(28 34 425.73 0 7 3 11.33 37.56 4824.95 0.14 1 83 7 36 14 21 49 268.05 11 false)
(9 9 70.31 0 2 0 3.86 18.23 271.19 0.02 1 19 2 11 6 7 10 15.07 3 false)
(9 16 144.95 0 2 9 10.67 13.59 1546.1 0.05 1 33 2 22 12 9 17 85.89 3 false)
(13 11 116.76 0 4 4 5.5 21.23 642.17 0.04 3 28 4 21 9 9 17 35.68 7 false)
(9 10 105.49 0 3 4 7.5 14.06 791.15 0.04 1 27 1 16 9 6 17 43.95 5 false)
(31 39 478.97 0 4 2 7.4 64.76 3542.75 0.16 1 90 4 37 11 29 51 196.82 7 false)
(35 54 625.77 0 9 3 36 17.38 22527.81 0.21 1 122 3 50 20 15 68 1251.55 16 false)
(5 7 47.55 0 1 1 1.75 27.17 83.21 0.02 1 15 1 7 3 6 8 4.62 1 false)
(5 9 68.11 0 2 0 3.21 21.19 218.94 0.02 1 19 2 6 5 7 10 12.16 3 false)
(16 41 390.14 13 1 4 3.73 104.67 1454.15 0.13 1 83 1 23 4 22 42 80.79 1 true)
(3 6 60.94 0 1 4 6 10.16 365.67 0.02 1 17 1 8 8 4 11 20.31 1 false)
(13 14 169.64 0 3 2 7 24.23 1187.51 0.06 1 37 2 18 12 12 23 65.97 4 false)
(19 80 786.99 0 2 0 15.24 51.65 11992.27 0.26 1 162 2 25 8 21 82 666.24 3 false)
(17 25 340.86 0 9 2 9.87 34.54 3363.75 0.11 1 67 2 23 15 19 42 186.88 10 false)
(10 21 172 0 2 1 10.5 16.37 1806 0.06 1 43 1 12 8 8 22 100.33 3 false)
(61 74 1045.51 0 8 21 28.34 36.89 29630.1 0.35 1 164 8 93 36 47 90 1646.12 10 true)
(23 35 459.83 0 6 7 13.52 34 6218.16 0.15 1 87 5 37 17 22 52 345.45 10 false)
(5 9 66.61 0 2 0 7.2 9.25 479.58 0.02 1 18 2 7 8 5 9 26.64 3 false)
(64 130 1741.06 0 17 4 14.22 122.45 24755.65 0.58 7 277 11 85 14 64 147 1375.31 33 true)
(57 102 1440.76 0 12 17 25.96 55.49 37407.34 0.48 10 226 7 97 28 55 124 2078.19 22 true)
(7 14 110.41 4 1 0 2.8 39.43 309.16 0.04 1 29 1 9 4 10 15 17.18 1 false)
(8 15 111.13 0 1 0 3.75 29.64 416.75 0.04 1 31 1 11 4 8 16 23.15 1 false)
(15 32 312.48 0 5 6 12 26.04 3749.74 0.1 5 65 3 26 12 16 33 208.32 9 false)
(7 5 36 0 2 0 4.17 8.64 150 0.01 1 12 2 8 5 3 7 8.33 3 false)
(19 32 401.13 0 6 0 10.91 36.77 4375.94 0.13 1 77 6 22 15 22 45 243.11 8 false)
(7 12 127.44 0 1 3 5.4 23.6 688.16 0.04 1 30 1 13 9 10 18 38.23 1 false)
(9 9 88 0 3 5 4.5 19.56 396 0.03 1 22 3 17 8 8 13 22 5 false)
(4 5 36.54 0 1 2 2.5 14.62 91.35 0.01 1 11 1 9 5 5 6 5.08 1 false)
(11 15 228.33 0 5 2 19.69 11.6 4495.15 0.08 5 47 1 14 21 8 32 249.73 9 false)
(33 59 674.04 0 4 14 8.05 83.78 5422.96 0.22 1 125 4 58 9 33 66 301.28 7 false)
(9 15 124 0 1 1 2.5 49.6 310 0.04 1 31 1 16 4 12 16 17.22 1 false)
(47 88 1352.4 0 7 0 28 48.3 37867.16 0.45 1 235 7 54 21 33 147 2103.73 11 false)
(12 14 129.66 0 3 2 4.67 27.78 605.07 0.04 1 30 1 18 8 12 16 33.61 5 false)
(6 9 71.7 0 1 1 2.25 31.87 161.32 0.02 1 20 1 10 4 8 11 8.96 1 false)
(31 115 1636.88 0 15 2 14.08 116.24 23049.99 0.55 15 276 15 42 12 49 161 1280.56 29 false)
(7 13 120.93 0 1 2 8.13 14.88 982.54 0.04 1 29 1 12 10 8 16 54.59 1 false)
(63 110 1466.05 0 14 18 17.98 81.53 26360.63 0.49 1 240 12 107 17 52 130 1464.48 25 true)
(20 33 351.55 0 2 2 7.26 48.42 2552.29 0.12 1 68 2 27 11 25 35 141.79 3 true)
(12 14 178.81 0 4 0 5.92 30.19 1059.13 0.06 1 39 3 15 11 13 25 58.84 7 false)
(34 132 1697.33 0 2 7 17.68 96.01 30006.37 0.57 1 276 1 56 15 56 144 1667.02 3 false)
(6 14 114.45 0 1 1 2.92 39.24 333.81 0.04 1 28 1 10 5 12 14 18.54 1 false)
(9 19 170.97 0 1 1 6.05 28.28 1033.56 0.06 1 41 1 13 7 11 22 57.42 1 true)
(3 2 11.61 0 1 1 1.5 7.74 17.41 0 1 5 1 5 3 2 3 0.97 1 false)
(15 32 291.48 0 5 4 7.2 40.48 2098.65 0.1 3 60 4 24 9 20 28 116.59 9 false)
(9 17 152.93 0 2 1 4.96 30.84 758.26 0.05 1 36 2 13 7 12 19 42.13 3 false)
(31 58 705.41 0 7 6 11.23 62.84 7918.85 0.24 1 130 6 44 12 31 72 439.94 13 false)
(10 19 168.56 0 1 2 2.38 70.97 400.32 0.06 1 39 1 19 4 16 20 22.24 1 false)
(5 6 53.77 0 1 1 4.2 12.8 225.85 0.02 1 15 1 9 7 5 9 12.55 1 false)
(17 33 355 0 3 1 9.9 35.86 3514.5 0.12 3 71 2 21 12 20 38 195.25 5 false)
(23 63 682.19 0 1 7 9.33 73.09 6367.15 0.23 1 133 1 39 8 27 70 353.73 1 false)
(18 34 389.83 0 5 11 18 21.66 7016.86 0.13 4 76 3 33 18 17 42 389.83 9 false)
(4 5 41.51 0 1 2 3 13.84 124.54 0.01 1 12 1 9 6 5 7 6.92 1 false)
(25 53 572.02 16 2 0 5.98 95.59 3422.92 0.19 1 109 2 27 7 31 56 190.16 3 false)
(14 13 171.9 3 5 0 7.09 24.24 1218.89 0.06 1 38 2 19 12 11 25 67.72 6 false)
(58 90 1225.35 0 12 13 23.52 52.09 28823.57 0.41 4 202 9 86 23 44 112 1601.31 23 false)
(13 15 192.57 2 5 0 7.5 25.68 1444.26 0.06 1 42 2 18 12 12 27 80.24 6 false)
(47 73 895.54 3 3 7 15.28 58.61 13683.04 0.3 1 151 3 65 18 43 78 760.17 5 false)
(9 16 156.08 0 2 4 8 19.51 1248.64 0.05 1 35 2 16 11 11 19 69.37 3 false)
(9 10 104.25 0 5 13 5 20.85 521.24 0.03 5 25 2 27 9 9 15 28.96 9 false)
(23 47 553.48 0 3 3 6.22 88.98 3442.96 0.18 1 102 3 32 9 34 55 191.28 5 false)
(11 26 216.64 0 2 1 7.09 30.55 1536.14 0.07 1 53 2 16 6 11 27 85.34 3 false)
(29 39 477.02 0 9 5 26 18.35 12402.61 0.16 4 93 4 43 20 15 54 689.03 16 false)
(25 32 373.29 0 7 1 10.4 35.89 3882.17 0.12 4 74 6 31 13 20 42 215.68 13 false)
(18 37 427.35 0 4 3 8.85 48.3 3781.09 0.14 1 84 4 30 11 23 47 210.06 5 false)
(13 14 120.93 0 2 0 4.45 27.15 538.68 0.04 1 29 2 15 7 11 15 29.93 3 false)
(6 12 93.77 0 1 2 3 31.26 281.3 0.03 1 24 1 11 5 10 12 15.63 1 false)
(100 223 3716.76 0 28 9 47.45 78.34 176348.54 1.24 1 526 15 130 40 94 303 9797.14 33 false)
(7 5 36 0 2 0 4.17 8.64 150 0.01 1 12 2 8 5 3 7 8.33 3 false)
(28 47 495 0 7 12 16.07 30.79 7959.08 0.17 3 99 4 49 13 19 52 442.17 13 false)
(4 4 44.97 0 2 0 5.33 8.43 239.85 0.01 1 13 1 5 8 3 9 13.33 3 false)
(5 7 101.58 0 1 4 5.25 19.35 533.29 0.03 1 26 1 12 9 6 19 29.63 1 false)
(39 100 1362.82 0 13 9 25 54.51 34070.5 0.45 1 228 6 55 21 42 128 1892.81 25 false)
(5 7 47.55 0 1 1 1.75 27.17 83.21 0.02 1 15 1 7 3 6 8 4.62 1 false)
(5 11 110.45 0 1 2 6.11 18.07 674.95 0.04 1 26 1 10 10 9 15 37.5 1 false)
(12 24 239.72 0 4 0 16.36 14.65 3922.73 0.08 1 51 1 14 15 11 27 217.93 7 false)
(34 61 767.4 0 8 2 16.05 47.8 12318.72 0.26 7 131 7 43 20 38 70 684.37 15 false)
(22 36 449.78 0 3 2 11.45 39.27 5152.07 0.15 1 87 3 28 14 22 51 286.23 5 false)
(16 20 244.42 0 4 4 7.33 33.33 1792.43 0.08 1 52 2 27 11 15 32 99.58 7 false)
(5 9 60.23 0 1 0 3.6 16.73 216.82 0.02 1 19 1 6 4 5 10 12.05 1 false)
(22 37 486.26 0 5 0 17.58 27.67 8545.97 0.16 1 92 2 27 19 20 55 474.78 7 false)
(18 21 218.72 0 3 0 4.42 49.47 966.99 0.07 1 46 3 20 8 19 25 53.72 5 true)
(6 8 89.92 0 2 1 7.33 12.26 659.44 0.03 1 22 2 8 11 6 14 36.64 3 false)
(10 17 184.48 0 1 2 9.35 19.73 1724.86 0.06 1 42 1 15 11 10 25 95.83 1 false)
(19 26 296.34 0 5 5 18.42 16.09 5457.54 0.1 4 61 3 29 17 12 35 303.2 9 false)
(6 20 183.94 0 1 0 8.89 20.69 1634.99 0.06 1 45 1 7 8 9 25 90.83 1 false)
(5 8 66.61 0 1 6 2.5 26.64 166.52 0.02 1 18 1 15 5 8 10 9.25 1 false)
(83 148 2110.58 1 14 16 21.29 99.15 44929.28 0.7 7 322 11 126 21 73 174 2496.07 24 false)
(13 20 187.3 0 3 0 8.33 22.48 1560.8 0.06 1 42 3 17 10 12 22 86.71 5 false)
(10 19 195.04 0 2 0 7.46 26.13 1455.85 0.07 1 42 2 13 11 14 23 80.88 3 false)
(37 51 730.87 0 5 4 13.84 52.8 10117.34 0.24 1 127 5 45 19 35 76 562.07 7 false)
(80 125 1800.5 0 22 18 18.49 97.4 33283.94 0.6 12 276 17 116 21 71 151 1849.11 43 false)
(6 8 51 0 1 0 2.4 21.25 122.4 0.02 1 17 1 7 3 5 9 6.8 1 false)
(5 6 57.36 0 1 2 4.2 13.66 240.91 0.02 1 16 1 10 7 5 10 13.38 1 false)
(9 5 53.15 0 2 1 3.75 14.17 199.32 0.02 1 16 1 12 6 4 11 11.07 3 false)
(30 75 1008.98 0 3 5 10.06 100.29 10151.3 0.34 1 177 3 39 11 41 102 563.96 5 true)
(15 19 245.18 3 7 0 8.23 29.78 2018.61 0.08 1 51 2 18 13 15 32 112.14 8 false)
(5 6 57.36 0 3 5 9 6.37 516.23 0.02 3 16 2 13 9 3 10 28.68 5 false)
(13 70 698.54 0 1 0 10.21 68.43 7130.95 0.23 1 141 1 14 7 24 71 396.16 1 false)
(52 77 1026.58 0 8 19 22.46 45.71 23055.47 0.34 1 176 7 89 21 36 99 1280.86 15 false)
(9 16 142.62 0 2 2 5.33 26.74 760.66 0.05 1 33 2 15 8 12 17 42.26 3 false)
(112 226 3306.37 0 26 25 34.67 95.37 114633.41 1.1 9 483 20 168 27 88 257 6368.52 50 true)
(9 14 122.62 0 2 2 4.9 25.03 600.86 0.04 1 30 2 14 7 10 16 33.38 3 false)
(6 11 83.76 0 1 1 3.06 27.41 255.94 0.03 1 22 1 10 5 9 11 14.22 1 false)
(6 8 66.57 0 1 0 3.2 20.8 213.02 0.02 1 21 1 7 4 5 13 11.83 1 false)
(9 31 324.14 0 2 3 8.35 38.84 2705.36 0.11 1 75 2 14 7 13 44 150.3 3 true)
(64 83 1419.09 0 19 2 20.75 68.39 29446.21 0.47 1 222 19 88 28 56 139 1635.9 22 false)
(43 39 411.2 0 8 2 5.69 72.3 2338.69 0.14 1 83 2 54 7 24 44 129.93 15 false)
(27 59 748.82 0 3 5 21.24 35.26 15905.03 0.25 3 138 2 42 18 25 79 883.61 5 false)
(3 6 60.94 0 1 3 6 10.16 365.67 0.02 1 17 1 8 8 4 11 20.31 1 false)
(9 19 180.09 0 1 2 4.75 37.91 855.4 0.06 1 41 1 14 7 14 22 47.52 1 false)
(25 51 578.25 0 9 8 12.24 47.24 7077.77 0.19 7 111 4 45 12 25 60 393.21 17 false)
(32 63 790.83 0 10 0 17.38 45.5 13744.03 0.26 1 144 6 38 16 29 81 763.56 19 false)
(4 2 16.25 0 1 0 1.5 10.84 24.38 0.01 1 7 1 5 3 2 5 1.35 1 false)
(4 3 24 0 1 4 2.5 9.6 60 0.01 1 8 1 11 5 3 5 3.33 1 false)
(42 56 667.43 1 23 6 6.4 104.29 4271.56 0.22 23 123 23 54 8 35 67 237.31 45 false)
(5 11 110.45 0 1 2 6.11 18.07 674.95 0.04 1 26 1 10 10 9 15 37.5 1 false)
(4 3 24 0 1 2 2.5 9.6 60 0.01 1 8 1 9 5 3 5 3.33 1 false)
(5 5 36 0 1 0 2.5 14.4 90 0.01 1 12 1 7 4 4 7 5 1 false)
(25 37 437.59 0 4 7 5.95 73.59 2602.12 0.15 1 84 4 38 9 28 47 144.56 7 false)
(59 90 1279.15 0 16 11 17.83 71.74 22807.44 0.43 13 206 10 86 21 53 116 1267.08 31 true)
(16 25 289.99 0 3 4 12.5 23.2 3624.82 0.1 1 57 3 26 17 17 32 201.38 5 false)
(11 25 315 0 1 8 9.72 32.4 3062.5 0.11 1 63 1 25 14 18 38 170.14 1 false)
(20 19 236.84 0 4 0 7.46 31.73 1767.82 0.08 1 51 4 24 11 14 32 98.21 6 false)
(24 47 553.48 0 4 2 5.37 103.04 2972.97 0.18 1 102 4 31 8 35 55 165.17 7 false)
(7 9 84 0 2 0 3.5 24 294 0.03 1 21 2 8 7 9 12 16.32 3 false)
(12 17 152.93 0 3 1 4.96 30.84 758.26 0.05 1 36 3 15 7 12 19 42.13 5 false)
(13 30 306.05 0 2 0 6.75 45.34 2065.86 0.1 1 63 2 16 9 20 33 114.77 3 false)
(24 53 656.58 0 3 5 12.79 51.32 8399.67 0.22 1 121 3 35 14 29 68 466.65 5 false)
(27 34 434.1 0 4 2 12.24 35.47 5313.4 0.14 1 80 4 34 18 25 46 295.19 6 false)
(30 54 646.26 0 3 3 14.4 44.88 9306.1 0.22 1 117 3 40 16 30 63 517.01 5 false)
(17 32 348.06 0 3 6 9.14 38.07 3182.29 0.12 1 69 3 33 12 21 37 176.79 5 false)
(4 4 25.27 0 1 0 1.5 16.84 37.9 0.01 1 9 1 5 3 4 5 2.11 1 false)
(9 9 70.31 0 2 0 3.86 18.23 271.19 0.02 1 19 2 11 6 7 10 15.07 3 false)
(14 27 240.81 0 1 4 3 80.27 722.43 0.08 1 54 1 26 4 18 27 40.13 1 false)
(17 35 382.57 0 4 7 5 76.51 1912.87 0.13 1 74 4 34 8 28 39 106.27 7 false)
(53 82 1368.31 0 13 4 23.3 58.74 31875.39 0.46 1 224 13 72 25 44 142 1770.86 15 false)
(31 87 1088.3 0 9 10 20.54 52.98 22355.6 0.36 5 190 3 52 17 36 103 1241.98 17 false)
(23 40 620.82 3 14 0 14.48 42.87 8991.25 0.21 1 110 2 32 21 29 70 499.51 15 false)
(17 19 262.33 3 7 0 8.87 29.59 2326 0.09 1 54 2 23 14 15 35 129.22 8 false)
(25 32 360 0 7 6 10.95 32.88 3941.05 0.12 6 72 6 37 13 19 40 218.95 13 false)
(10 21 224.66 0 6 2 4.32 51.96 971.34 0.07 1 49 6 13 7 17 28 53.96 11 false)
(8 13 130.8 0 2 3 9.29 14.09 1214.56 0.04 1 32 1 15 10 7 19 67.48 3 false)
(41 77 1085.83 0 5 1 20.13 53.95 21852.33 0.36 5 179 4 50 23 44 102 1214.02 9 false)
(9 13 110.45 0 2 2 7.22 15.29 797.67 0.04 1 26 2 13 10 9 13 44.31 3 false)
(25 53 580.09 16 2 0 5.62 103.2 3260.81 0.19 1 109 2 27 7 33 56 181.16 3 false)
(66 91 1231.94 0 18 12 17.87 68.92 22020.91 0.41 4 196 3 101 22 56 105 1223.38 35 false)
(19 30 279.68 0 3 15 10.71 26.1 2996.6 0.09 1 61 3 44 10 14 31 166.48 5 false)
(23 25 318.02 0 4 3 9.38 33.92 2981.4 0.11 1 62 3 34 15 20 37 165.63 5 false)
(3 3 19.65 0 1 0 2 9.83 39.3 0.01 1 7 1 4 4 3 4 2.18 1 false)
(17 60 630.34 0 1 0 4.69 134.47 2954.74 0.21 1 121 1 18 5 32 61 164.15 1 false)
(10 16 140 0 1 5 2.67 52.5 373.33 0.05 1 35 1 22 4 12 19 20.74 1 false)
(55 100 1375.75 0 9 11 7.86 175.1 10809.44 0.46 1 217 9 83 11 70 117 600.52 17 true)
(9 13 126.71 0 3 6 11.92 10.63 1509.98 0.04 1 31 1 20 11 6 18 83.89 5 false)
(28 49 602.07 0 4 3 5.96 101.03 3588 0.2 1 109 4 38 9 37 60 199.33 7 true)
(3 2 11.61 0 1 1 1.5 7.74 17.41 0 1 5 1 5 3 2 3 0.97 1 false)
(12 10 69.49 0 1 2 3.5 19.85 243.2 0.02 1 17 1 17 7 10 7 13.51 1 false)
(12 27 283.63 0 4 6 11.7 24.24 3318.52 0.09 4 59 2 22 13 15 32 184.36 7 false)
(22 25 326.98 0 5 0 9.03 36.22 2951.88 0.11 1 66 5 27 13 18 41 163.99 7 false)
(69 119 1607.04 0 12 5 28 57.39 44996.99 0.54 9 258 9 88 24 51 139 2499.83 21 false)
(9 19 223.48 0 4 1 7.6 29.41 1698.45 0.07 4 47 2 13 12 15 28 94.36 7 false)
(45 87 1156.15 0 12 11 12.65 91.36 14630.58 0.39 6 188 9 69 16 55 101 812.81 23 true)
(50 89 1557.48 0 16 17 25.55 60.97 39787.9 0.52 1 243 5 84 31 54 154 2210.44 20 false)
(6 20 171.33 4 1 1 7.5 22.84 1284.98 0.06 1 45 1 8 6 8 25 71.39 1 false)
(21 28 333.67 0 4 0 6 55.61 2002.01 0.11 1 68 4 25 9 21 40 111.22 7 false)
(9 6 64.53 0 2 0 3 21.51 193.59 0.02 1 18 2 10 6 6 12 10.75 3 false)
(7 5 57.36 0 2 2 5 11.47 286.8 0.02 1 16 1 13 8 4 11 15.93 3 false)
(32 51 617.62 0 10 1 12.36 49.95 7636.01 0.21 4 110 9 38 16 33 59 424.22 19 false)
(3 3 19.65 0 1 1 2 9.83 39.3 0.01 1 7 1 5 4 3 4 2.18 1 false)
(16 23 242.5 0 3 2 10.68 22.71 2589.55 0.08 1 51 3 22 13 14 28 143.86 5 false)
(40 67 857.43 0 6 12 16.75 51.19 14362.03 0.29 1 147 6 63 19 38 80 797.89 11 false)
(29 32 409.79 0 5 6 11.83 34.65 4846.19 0.14 1 77 5 43 17 23 45 269.23 7 false)
(4 5 36.54 0 2 0 2.5 14.62 91.35 0.01 1 11 2 5 5 5 6 5.08 3 false)
(7 13 116 0 1 0 2.95 39.26 342.73 0.04 1 29 1 9 5 11 16 19.04 1 false)
(11 36 373.35 0 4 0 29.25 12.76 10920.4 0.12 1 85 1 14 13 8 49 606.69 7 false)
(14 37 485.97 0 10 0 13.21 36.78 6421.79 0.16 1 94 10 15 15 21 57 356.77 11 false)
(4 3 33.22 0 1 2 3.5 9.49 116.27 0.01 1 10 1 9 7 3 7 6.46 1 false)
(40 65 878.66 0 9 6 10.16 86.51 8923.89 0.29 5 147 8 61 15 48 82 495.77 17 false)
(29 46 539.01 0 4 8 11.15 48.34 6010.8 0.18 1 96 3 47 16 33 50 333.93 7 true)
(10 14 133.22 0 1 2 8.17 16.3 1087.93 0.04 1 36 1 15 7 6 22 60.44 1 false)
(12 15 140.55 0 3 0 4.62 30.45 648.71 0.05 1 32 3 14 8 13 17 36.04 5 false)
(9 5 53.15 0 2 1 3.75 14.17 199.32 0.02 1 16 1 12 6 4 11 11.07 3 false)
(35 137 1821.79 0 1 6 18.78 97 34217.38 0.61 1 289 1 55 17 62 152 1900.97 1 false)
(54 70 892.01 0 16 8 11.1 80.38 9899.11 0.3 7 155 9 77 13 41 85 549.95 31 false)
(36 61 830.3 0 6 13 12.77 65.03 10600.85 0.28 5 140 5 59 18 43 79 588.94 11 false)
(3 3 19.65 0 1 1 2 9.83 39.3 0.01 1 7 1 5 4 3 4 2.18 1 false)
(7 5 36 0 2 0 4.17 8.64 150 0.01 1 12 2 8 5 3 7 8.33 3 false)
(28 60 668.35 1 1 7 2.86 233.92 1909.57 0.22 1 121 1 45 4 42 61 106.09 1 false)
(5 11 96 0 1 0 2.5 38.4 240 0.03 1 24 1 6 5 11 13 13.33 1 false)
(15 18 185.47 0 4 1 9.82 18.89 1820.94 0.06 3 41 3 20 12 11 23 101.16 7 false)
(13 17 182.84 0 2 3 7.08 25.81 1295.09 0.06 1 41 2 20 10 12 24 71.95 3 false)
(9 5 53.15 0 2 1 3.75 14.17 199.32 0.02 1 16 1 12 6 4 11 11.07 3 false)
(10 18 144 0 1 3 3 48 432 0.05 1 36 1 19 4 12 18 24 1 false)
(37 75 899.18 1 11 2 18.75 47.96 16859.61 0.3 10 161 2 45 16 32 86 936.64 21 false)
(43 71 973.75 0 5 17 14.01 69.49 13645.26 0.32 1 170 5 74 15 38 99 758.07 9 true)
(31 36 496.83 0 9 5 13.91 35.72 6910.42 0.17 1 94 6 43 17 22 58 383.91 15 false)
(66 116 1542.48 0 16 33 20.79 74.18 32071.97 0.51 6 250 8 120 19 53 134 1781.78 31 true)
(4 4 25.27 0 1 0 1.5 16.84 37.9 0.01 1 9 1 5 3 4 5 2.11 1 false)
(24 40 475.69 0 4 6 6 79.28 2854.12 0.16 1 90 4 38 9 30 50 158.56 7 false)
(10 41 444.74 0 1 23 10.25 43.39 4558.6 0.15 1 97 1 40 8 16 56 253.26 1 true)
(24 84 812.49 0 2 3 17.18 47.29 13960.02 0.27 1 164 2 39 9 22 80 775.56 3 false)
(5 6 53.77 0 1 5 3 17.92 161.32 0.02 1 15 1 12 6 6 9 8.96 1 false)
(37 61 743.09 0 9 5 12.71 58.47 9443.41 0.25 5 131 5 52 15 36 70 524.63 17 false)
(6 8 62.91 0 2 1 2.5 25.16 157.27 0.02 1 17 2 8 5 8 9 8.74 3 false)
(26 54 626.07 0 3 7 9.82 63.77 6146.88 0.21 3 114 3 44 12 33 60 341.49 5 false)
(10 14 133.22 0 1 3 8.17 16.3 1087.93 0.04 1 36 1 16 7 6 22 60.44 1 false)
(5 9 106.27 0 1 5 6.43 16.53 683.19 0.04 1 26 1 13 10 7 17 37.96 1 false)
(13 15 192.57 2 5 0 7.5 25.68 1444.26 0.06 1 42 2 16 12 12 27 80.24 6 false)
(28 44 551.4 0 4 5 5.66 97.47 3119.36 0.18 1 101 4 41 9 35 57 173.3 7 false)
(20 29 335 0 6 2 11.28 29.7 3778.06 0.11 5 67 4 27 14 18 38 209.89 11 false)
(10 27 267.19 0 2 0 10.97 24.36 2930.73 0.09 1 55 2 13 13 16 28 162.82 3 false)
(5 7 104 0 1 3 5.83 17.83 606.67 0.03 1 26 1 11 10 6 19 33.7 1 false)
(29 55 741.06 1 7 9 12.22 60.63 9057.37 0.25 5 130 6 42 16 36 75 503.19 13 false)
(71 107 1421.99 0 18 8 24.52 57.99 34868.47 0.47 10 232 11 94 22 48 125 1937.14 35 true)
(7 7 68.53 0 1 0 6.3 10.88 431.75 0.02 1 18 1 8 9 5 11 23.99 1 false)
(16 28 264.7 0 6 0 6.59 40.18 1743.9 0.09 1 57 6 18 8 17 29 96.88 11 false)
(5 7 50.19 0 2 2 4.9 10.24 245.93 0.02 1 14 2 10 7 5 7 13.66 3 false)
(42 71 952.99 0 10 13 21.11 45.15 20115.78 0.32 7 162 7 66 22 37 91 1117.54 19 false)
(16 22 258.51 0 3 15 12.83 20.14 3317.73 0.09 1 55 2 35 14 12 33 184.32 5 true)
(15 23 241.48 0 3 3 10.62 22.75 2563.41 0.08 1 52 2 24 12 13 29 142.41 5 false)
(5 6 36.5 0 1 0 2.25 16.21 82.12 0.01 1 13 1 6 3 4 7 4.56 1 false)
(19 35 369.21 0 7 4 6.67 55.38 2461.38 0.12 1 76 7 30 8 21 41 136.74 13 false)
(9 16 187.98 0 4 1 6.77 27.77 1272.5 0.06 4 41 2 13 11 13 25 70.69 7 false)
(18 22 310 3 8 0 9.71 31.94 3008.82 0.1 1 62 2 24 15 17 40 167.16 9 false)
(10 15 201.74 0 5 0 6.35 31.79 1280.26 0.07 1 44 5 12 11 13 29 71.13 6 false)
(7 12 121.01 0 2 3 9 13.45 1089.13 0.04 1 28 1 14 12 8 16 60.51 3 false)
(10 25 245.18 0 2 2 4.17 58.84 1021.56 0.08 1 51 2 18 7 21 26 56.75 3 false)
(16 22 218.51 0 2 3 3.24 67.54 706.95 0.07 1 49 2 24 5 17 27 39.28 3 false)
)))
