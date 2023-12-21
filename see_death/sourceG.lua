pickupPositions = {
	{1400, -1696, 8297.59961},
	{1016.5, -1790, 8297.59961},
	{1018.59998, -2192.69995, 8297.59961},
	{1514.90002, -1843.30005, 8297.59961},
	{1451.80005, -3246.5, 8297.59961},
	{947, -3189.8999, 8297.59961},
	{937.90002, -2258, 8297.59961},
	{1604.80005, -1993.69995, 8297.59961},
	{1672.59998, -3326.5, 8297.59961},
}

aetherBounds = {
	{1670, -3350},
	{1670, -1750},
	{950, -1750},
	{890, -3350}
}

minX = math.min(aetherBounds[1][1], aetherBounds[2][1], aetherBounds[3][1])
minY = math.min(aetherBounds[1][2], aetherBounds[2][2], aetherBounds[3][2], aetherBounds[4][2])
maxX = math.max(aetherBounds[1][1], aetherBounds[2][1], aetherBounds[3][1])
maxY = math.max(aetherBounds[1][2], aetherBounds[2][2], aetherBounds[3][2], aetherBounds[4][2])

objectPositions = {
	{1236.19995, -3265.69995, 8317.2998},
	{1237.90002, -3206.1001, 8317.2998},
	{1239.5, -3149, 8317.2998},
	{1239.59998, -3087.19995, 8317.2998},
	{1239.80005, -3017.8999, 8317.2998},
	{1239.90002, -2956.6001, 8317.2998},
	{1240, -2897.80005, 8317.2998},
	{1241.40002, -2801.5, 8317.2998},
	{1240.69995, -2740.19995, 8317.2998},
	{1241.59998, -2646.69995, 8317.2998},
	{1241.30005, -2585.69995, 8317.2998},
	{1240.5, -2494.3999, 8317.2998},
	{1240.40002, -2434.69995, 8317.2998},
	{1239.40002, -2336.69995, 8317.2998},
	{1239.19995, -2275.80005, 8317.2998},
	{1239.19995, -2178, 8317.2998},
	{1239.69995, -2118.5, 8317.2998},
	{1241.30005, -2021.30005, 8317.2998},
	{1241.09998, -1961, 8317.2998},
	{1242.30005, -1886.5, 8317.2998},
	{1242.5, -1830, 8317.2998},
	{1065.40002, -1831.90002, 8317.2998},
	{1066.09998, -1928.90002, 8317.2998},
	{1066, -2027.69995, 8317.2998},
	{1066.40002, -2126.1001, 8317.2998},
	{1066.69995, -2224.6001, 8317.2998},
	{1065.90002, -2321.80005, 8317.2998},
	{1066.09998, -2419.3999, 8317.2998},
	{1065.90002, -2513.8999, 8317.2998},
	{1065.69995, -2610.3999, 8317.2998},
	{1065.5, -2706.6001, 8317.2998},
	{1066, -2804.30005, 8317.2998},
	{1066.5, -2902.1001, 8317.2998},
	{1066, -2996.8999, 8317.2998},
	{1065.5, -3094.19995, 8317.2998},
	{1063.80005, -3188.5, 8317.2998},
	{1062, -3286.30005, 8317.2998},
	{1413.80005, -3265.30005, 8317.2998},
	{1413.90002, -3171.19995, 8317.2998},
	{1414, -3073.6001, 8317.2998},
	{1414.09998, -2974.8999, 8317.2998},
	{1413.19995, -2878.30005, 8317.2998},
	{1413, -2781.5, 8317.2998},
	{1410.59998, -2683.5, 8317.2998},
	{1408.69995, -2588.1001, 8317.2998},
	{1407.40002, -2498.6001, 8317.2998},
	{1403.69995, -2401.1001, 8317.2998},
	{1405.59998, -2302.8999, 8317.2998},
	{1401.90002, -2205, 8317.2998},
	{1404.5, -2107, 8317.2998},
	{1405.30005, -2008.30005, 8317.2998},
	{1415.69995, -1909.90002, 8317.2998},
	{1412.80005, -1811.90002, 8317.2998},
	{1598.30005, -3263.3999, 8317.2998},
	{1598.19995, -3201.8999, 8317.2998},
	{1598.19995, -3141.5, 8317.2998},
	{1598, -3080, 8317.2998},
	{1598.19995, -2982.30005, 8317.2998},
	{1598, -2915.1001, 8317.2998},
	{1599.09998, -2820.69995, 8317.2998},
	{1594.30005, -2760.1001, 8317.2998},
	{1590.30005, -2664.8999, 8317.2002},
	{1587.69995, -2605.19995, 8317.2002},
	{1584, -2507.3999, 8317.2002},
	{1583.80005, -2446.69995, 8317.2002},
	{1579.69995, -2348, 8317.2002},
	{1577.30005, -2249.5, 8317.2002},
	{1576.09998, -2192, 8317.2002},
	{1575.30005, -2097.3999, 8317.2002},
	{1575.30005, -2035.90002, 8317.2002},
	{1572.69995, -1938.30005, 8317.2002},
	{1572.90002, -1877.90002, 8317.2002},
	{1573.30005, -1780.80005, 8317.2002},
	{1573.30005, -1755.80005, 8317.2002},
	{1612, -1800.09998, 8317.2002},
	{1511.19995, -1795.5, 8317.2002},
	{1423.19995, -1791.5, 8317.2002},
	{1366.19995, -1789.59998, 8317.2002},
	{1238.30005, -1791.5, 8317.2002},
	{1178.80005, -1788.80005, 8317.2002},
	{1122.90002, -1786.5, 8317.2002},
	{1027.80005, -1782.90002, 8317.2002},
	{1030.30005, -1745, 8317.2002},
	{1028.09998, -1805.09998, 8317.2002},
	{1026.90002, -1865.09998, 8317.2002},
	{1025, -1924.30005, 8317.2002},
	{1024.30005, -1985.19995, 8317.2002},
	{1022.79999, -2045.5, 8317.2002},
	{1020.59998, -2105.19995, 8317.2002},
	{1019.5, -2165.69995, 8317.2002},
	{1017.90002, -2226.19995, 8317.2002},
	{1016.90002, -2287.30005, 8317.2002},
	{1015.5, -2347.69995, 8317.2002},
	{1014.09998, -2408.8999, 8317.2002},
	{1012.59998, -2468.8999, 8317.2002},
	{1011.09998, -2528.6001, 8317.2002},
	{1009.70001, -2589.5, 8317.2002},
	{1007.79999, -2650.3999, 8317.2002},
	{1005.70001, -2711, 8317.2002},
	{1003.79999, -2772.3999, 8317.2002},
	{1001.5, -2832.80005, 8317.2002},
	{999.20001, -2893.5, 8317.2002},
	{997.40002, -2953.80005, 8317.2002},
	{995.79999, -3014.1001, 8317.2002},
	{994.20001, -3075.30005, 8317.2002},
	{992.90002, -3135, 8317.2002},
	{990.90002, -3194.30005, 8317.2002},
	{989, -3254.8999, 8317.2002},
	{987.29999, -3285.1001, 8317.2002},
	{1258.5, -3287.69995, 8317.2998},
	{1460.90002, -3288.69995, 8317.2998},
	{1599.5, -3289.30005, 8317.2998},
	{1599.19995, -2924.1001, 8317.2998},
	{1579.90002, -2299.80005, 8317.2002},
}