availableGates = {
	--				   1  2  3  4   5   6          7  8  9  10  11  12      13        14      15                16                17       18
	-- [ID] = (Nyitott X, Y, Z, RX, RY, RZ), (Zárt X, Y, Z, RX, RY, RZ), Interior, Dimenzió, Model, Nyitás/zárás sebessége (ms), Scale, Collision
	[5] = {253.25100708008, 125.76100158691, 1004.2199707031, 0, 0, 90, 253.25100708008, 125.76100158691, 1004.2100219727, 0, 0, 90, 10, 31, 980, 1000},
	[7] = {239.58200073242, 125.87000274658, 1002.2199707031, 0, 0, 90, 239.58200073242, 125.87000274658, 1002.1199951172, 0, 0, 90, 10, 31, 980, 1000},
	[8] = {269.76800537109, 115.78399658203, 1000.8300170898, 0, 0, 0, 269.76800537109, 115.78399658203, 1004.6199951172, 0, 0, 0, 10, 31, 980, 2500},
	[9] = {2014.7, 2123.3999, 7.1, 0, 0, 179.995, 2014.7, 2123.3999, 9, 0, 0, 180, 0, 0, 980, 1000},
	[10] = {-390.10001, 1269.8, 8, 0, 0, 90, -390.10001, 1273.1, 8, 0, 0, 90, 0, 0, 10252, 1000, 0.8},
	[11] = {-432.79999, 1282.7, 27.2, 0, 81.75, 275.993, -432.60001, 1281.4, 25.5, 0, 0, 275.997, 0, 0, 16500, 1000, 1, true},
	[12] = {2494.1001, 2350.7, 12.2, 0, 0, 180, 2482.6001, 2350.7, 12.2, 0, 0, 180, 0, 0, 980, 1000},
	[16] = {-1565.3, 2692.2, 52.8, 0, 0, 359.247, -1279.1, 2511.6001, 5996.3999, 0, 0, 179.995, 0, 0, 2933, 1000},
	[17] = {2294, 2497.8, -0.5, 0, 0, 270, 2294, 2497.8, 4.4, 0, 0, 270, 0, 0, 980, 1000},
	[18] = {2335.3999, 2444.1001, 0, 0, 0, 60, 2335.3999, 2444.1001, 8.35, 0, 0, 60, 0, 0, 971, 1000},
	[19] = {-1398.8, -232, 1095.1, 0, 0, 180, -1398.8, -229.2, 1095.1, 0, 0, 179.995, 7, 1597, 983, 500},
	[23] = {2062.8999, 2463.5, 5.27, 0, 0, 0, 2062.8999, 2463.5, 9.77, 0, 0, 0, 0, 0, 971, 1000},
	[24] = {2102.2, 2463.5, 5.27, 0, 0, 0, 2102.2, 2463.5, 9.77, 0, 0, 0, 0, 0, 971, 1000},
	[29] = {295.29999, 1131.7998, 2469.7, 0, 0, 2, 298.29999, 1131.7998, 2469.7, 0, 0, 2, 0, 0, 976, 1000},
	[31] = {-542.20001, 2585.8201, 53.7, 0, 0, 270, -542.20001, 2585.8203, 49.75, 0, 0, 270, 0, 0, 980, 2000},
	[32] = {2450.6001, 2360, 19996.1, 0, 0, 270, 2450.6001, 2358.6001, 19996.1, 0, 0, 270, 0, 0, 3089, 1000},
	[35] = {-1326.4, 2513.5, 2141.5, 0, 0, 0, -1322.2, 2513.2, 2141.5, 0, 0, 0, 0, 0, 969, 1000},
	[36] = {-1314.3, 2683.7, 2125.8, 0, 0, 88, -1314.4, 2680.5, 2125.8298, 0, 0, 88, 0, 0, 969, 1000},
	[37] = {-179.60001, 2421.8999, 9993.7998, 0, 0, 0, -175.10001, 2421.8999, 9993.7998, 0, 0, 0, 0, 0, 2933, 1000},
	[38] = {-204, 2393.2002, 9998.5, 0, 0, 178.495, -204, 2393.2, 9998.5, 0, 0, 88.5, 0, 0, 3062, 1000},
	[39] = {986.2048828125, 1077.2958984375, 9.8203125, 0, 0, 90, 986.2048828125, 1077.2958984375, 8.5, 0, 0, 90, 0, 0, 994, 1000},
	[40] = {986.2048828125, 1068.2958984375, 9.8203125, 0, 0, 90, 986.2048828125, 1068.2958984375, 8.5, 0, 0, 90, 0, 0, 994, 1000},
	[42] = {793, 2037.6, 5.9, 0, 0, 180, 786.5, 2037.6, 5.9, 0, 0, 180, 0, 0, 969, 5000},
	[43] = {2173.6001, 2698.3, 6.6, 0, 0, 90, 2173.6001, 2698.3, 10, 0, 0, 90, 0, 0, 976, 1000},
	[44] = {771.20001, 2073, 8.9, 0, -71, 0, 771.20001, 2073, 7.2, 0, 0, 0, 0, 0, 17951, 3000, 1.2},
	[45] = {2100.5, 2698.2, 6.6, 0, 0, 90, 2100.5, 2698.2002, 10, 0, 0, 90, 0, 0, 976, 1000},
	[56] = {933.953, 1737.36792, 19998.61875, 0, 0, 90, 933.953, 1737.36792, 19998.61875, 0, 0, 0, 1, 1, 3089, 1000},
	[57] = {925.41937, 1732.01611, 19998.61875, 0, 0, 180, 925.41937, 1732.01611, 19998.61875, 0, 0, 90, 1, 1, 3089, 1000},
	[58] = {910.35571, 1734.48474, 19998.71445, 0, 0, -90, 910.35571, 1734.48474, 19998.71445, 0, 0, 0, 1, 1, 3089, 1000},
	[59] = {920.64288, 1752.92297, 19997.5293, 0, 0, 90, 918.922, 1752.92297, 19997.5293, 0, 0, 90, 1, 1, 2930, 1000},
	[60] = {-219.16499, 979.01703, 19999.14609, 0, 0, 90, -219.16499, 979.01703, 19999.14609, 0, 0, 0, 1, 1, 3089, 1000},
	[61] = {-219.814, 985.16199, 20000.63672, 0, 0, 0, -219.814, 986.88599, 20000.63672, 0, 0, 0, 1, 1, 2930, 1000},
	[62] = {1910.6, 943.59998, 10.6, 0, 359.5, 0, 1910.7, 943.59998, 10.7, 0, 269, 0, 0, 0, 968, 1000},
	[63] = {1903.3, 971.20001, 13.75, 278.96, 0, 0, 1903.3, 967.29999, 16.4, 360, 0, 0, 0, 0, 2885, 1000, 1, true},
	[64] = {1629.4, 1735.2, 10.6, 0, 0, 0, 1629.4, 1735.2, 10.6, 0, 90, 0, 0, 0, 968, 1000},
	[65] = {1543.4, 1755, 19996.301, 0, 0, 0, 1543.4, 1761.1, 19996.301, 0, 0, 0, 0, 0, 3037, 1500, 1, false},
	[68] = {-1302, 2495.8899, 85.8, 0, 0, 179.995, -1293.3, 2496, 85.8, 0, 0, 180, 0, 0, 976, 1500},
	[69] = {-1415.8, 2646, 54.8, 0, 0, 90, -1415.8, 2637.2, 54.8, 0, 0, 90, 0, 0, 969, 2000, 0.98, false},
	[105] = {2238.2, 2450.7, 14.2, 85, 0, 0, 2238.2, 2453.9, 10.569, 0, 0, 0, 0, 0, 1251, 1000},
	[108] = {942.40039, 1742.7998, 19989.301, 0, 0, 280, 942.40002, 1742.7998, 19989.301, 0, 0, 180, 0, 0, 3089, 1000},
	[109] = {941.90002, 1627.1, 19995, 0, 0, 0, 941.90002, 1627.1, 19991.4, 0, 0, 0, 0, 0, 17951, 1000, 1.3},
	[110] = {1062.649, 1318.7, 9.3, 0, 0, 0, 1062.649, 1318.7, 10.3, 0, 0, 0, 0, 0, 970, 1000},
	[111] = {1067.2, 1318.7, 9.3, 0, 0, 0, 1067.2, 1318.7, 10.3, 0, 0, 0, 0, 0, 970, 1000},
	[112] = {1071.8, 1318.7, 9.3, 0, 0, 0, 1071.8, 1318.7, 10.3, 0, 0, 0, 0, 0, 970, 1000},
	[114] = {-131.8, 1122.6, 21.99, 0, 90, 270, -131.8, 1121.6, 20.5, 0, 0, 270, 0, 0, 10182, 1000, 1, true},
	[115] = {-141.99899, 1108, 21.8, 0, -90, 270, -141.99899, 1109.7002, 20.5, 0, 0, 270, 0, 0, 10182, 1000, 1, true},
	[116] = {-127.7, 1117.54, 2232.24, 0, 0, 89.495, -129.28711, 1117.54, 2232.24, 0, 0, 89.495, 0, 0, 2930, 1000, 1, true},
	[117] = {-633.5, 1447.4004, 10.5, 0, 0, 90, -633.5, 1447.4, 13.4, 0, 0, 90, 0, 0, 16500, 1000, 1, true},
	[118] = {1917.2, 622.42999, 6.39, 0, 0, 0, 1917.2, 622.42999, 9.71, 0, 0, 0, 0, 0, 976, 1000, 1.1, false},
	[120] = {-875.2001953125, 2707.2998046875, 38, 0, 0, 135.99975585938, -875.2001953125, 2707.2998046875, 44.200000762939, 0, 0, 135.99975585938, 0, 0, 971, 1000, 1, false},
	[121] = {-888.7001953125, 2696, 39, 0, 0, 45.247192382813, -888.7001953125, 2696, 42.099998474121, 0, 0, 45.247192382813, 0, 0, 5061, 1000, 1, false},
	[122] = {2559, 1389.5, 10.5, 0, 0, 0, 2559, 1389.5, 10.5, -90, 0, 0, 0, 0, 2920, 2000, 1, false},
	[124] = {2579.6001, 1446.2, 13.6, 0, 90, 270, 2579.6001, 1448.4, 11.8, 0, 0, 270, 0, 0, 10182, 2000, 1.13, true},
	[1057] = {320.89999, 314.70001, 998, 0, 0, 90, 320.89999, 314.70001, 998, 0, 0, 90, 5, 1457, 971, 1000},
	[918] = {1706.2418212891, 1607.5954589844, 6.2156219482422, 0, 0, 255, 1706.2418212891, 1607.5954589844, 12.015625, 0, 0, 255, 0, 0, 980, 1200},
	[118] = {1396.8095703125, 2688.6176757812, 10.8203125, 1396.8095703125, 2688.6176757812, 10.8203125, 1396.5291748047, 2693.912109375, 10.8203125, 1396.5291748047, 2693.912109375, 10.8203125, 0, 0, 69, 1200},
	[119] = {1577.8000488281, 713.79998779297, 6.95, 0, 0, 90, 1577.8000488281, 713.79998779297, 12.5, 0, 0, 90, 0, 0, 980, 1200},
	[123] = {-505, 2593.3000488281, 49.6, 0, 0, 270, -505.2, 2593.3000488281, 52.599998474121, 0, 0, 270, 0, 0, 980, 1000},
	[125] = {2629.8000488281, 1214.1999511719, 11.39999961853, 0, 0, 90, 2629.8000488281, 1215.5, 12.699999809265, 0, 90, 90, 0, 0, 7930, 1000},
	[126] = {135.599, 1941.200, 26.9, 0, 0, 0, 135.599, 1941.200, 21.10, 0, 0, 0, 0, 0, 980, 1000},
	[127] = {213.87, 1875.199, 4, 0, 90, 90, 213.87, 1875.199, 12.100, 0, 90, 90, 0, 0, 3095, 1000},
	[128] = {77.400, 2070.600, 24.5, 0, 0, 91.99, 77.400, 2070.600, 19.20, 0, 0, 91.99, 0, 0, 980, 1000},
	[129] = {-13.60, 2067.30, 24.799, 0, 0, 90, -13.60, 2067.30, 19, 0, 0, 90, 0, 0, 980, 1000},
	[130] = {-777.90002441406, 2741.1999511719, 45.5, 0, 0, 0, -777.90002441406, 2741.1999511719, 45.5, 0, 90, 0, 0, 0, 968, 1200},
	[131] = {2618.1000976562, 1173, 12.60000038147, 0, 0, 90, 2618.1000976562, 1173, 6.60000038147, 0, 0, 90, 0, 0, 980, 1000},
	[132] = {-570.70001220703, 2565.6000976562, 53.700000762939, 0, 15, 0, -570.70001220703, 2565.6000976562, 53.700000762939, 0, 90, 0, 0, 0, 968, 1000},
	[133] = {2537.3000488281, 2128.8000488281, 7, 0, 0, 90, 2537.3000488281, 2128.8000488281, 12.60000038147, 0, 0, 90, 0, 0, 980, 1000},
	[134] = {997.09997558594, 1707.1999511719, 10.699999809265, 0, 0, 90, 997.09997558594, 1707.1999511719, 10.699999809265, 0, 90, 90, 0, 0, 968, 1000},
	[135] = {996.90002441406, 1751.8000488281, 10.699999809265, 0, 0, 90, 996.90002441406, 1751.8000488281, 10.699999809265, 0, 90, 90, 0, 0, 968, 1},
	[136] = {997.29998779297, 1684, 7.1999998092651, 0, 0, 90, 997.29998779297, 1684, 7.1999998092651, 0, 0, 90, 0, 0, 988, 1},
	[137] = {997.29998779297, 1684, 7.1999998092651, 0, 0, 90, 997.29998779297, 1684, 7.1999998092651, 0, 0, 90, 0, 0, 988, 1},
	[138] = {1128.8000488281, 2063.1999511719, 6.9000000953674, 0, 0, 180, 1128.8000488281, 2063.1999511719, 12.60000038147, 0, 0, 180, 0, 0, 980, 1000}, -- CsakSimánKrisztián#2525 | ppzve lett maganbirtokra
	[139] = {2030, 2103.3000488281, 6.5999999046326, 0, 0, 0, 2030, 2103.3000488281, 7.9000000953674, 0, 0, 0, 0, 0, 969, 1000},
	[140] = {2046, 2045.8000488281, 7, 0, 0, 0, 2046, 2045.8000488281, 8.5, 0, 0, 0, 0, 0, 980, 1000},
	[141] = {699.90002441406, 536.70001220703, 7, 0, 0, 336, 699.90002441406, 536.70001220703, 12.699999809265, 0, 0, 336, 0, 0, 980, 1000},
	[142] = {626.70001220703, 515.70001220703, 7, 0, 0, 336.99987792969, 626.70001220703, 515.70001220703, 12.39999961853, 0, 0, 336.99987792969, 0, 0, 980, 1000},
	[143] = {2096.6999511719, 2661.8999023438, 6.9000000953674, 0, 0, 90, 2096.6999511719, 2661.8999023438, 12.60000038147, 0, 0, 90, 0, 0, 980, 1000},
}

prisonGates = {72, 104}

function getPrisonGateIDs()
	return prisonGates
end

function getGateDetails(gateID)
	return availableGates[gateID]
end