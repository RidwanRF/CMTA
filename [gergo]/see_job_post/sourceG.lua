jobID = 3

local getZoneNameEx = getZoneName

function getZoneName(x, y, z, cities)
	local zone = getZoneNameEx(x, y, z, cities)
	
	if zone == "Greenglass College" then
		return "Las Venturas City Hall"
	end

	return zone
end

deliveryPositions = {
	{1279.9619140625, 2524.65625, 10.8203125, 267.90295410156},
	{1307.1484375, 2526.296875, 10.8203125, 91.35546875},
	{1326.33203125, 2576.400390625, 10.8203125, 1.0519714355469},
	{1279.9609375, 2566.6904296875, 10.8203125, 272.87982177734},
	{1349.9208984375, 2573.9453125, 10.8203125, 1.3431091308594},
	{1231.3154296875, 2615.216796875, 10.8203125, 276.19775390625},
	{1344.494140625, 2609.93359375, 11.298933029175, 186.91050720215},
	{1267.1875, 2606.26953125, 10.8203125, 176.91284179688},
	{1374.0556640625, 2522.4296875, 10.8203125, 278.26870727539},
	{1232.7607421875, 2587.0927734375, 10.8203125, 275.14855957031},
	{1405.0302734375, 2524.58203125, 10.8203125, 88.795623779297},
	{1319.2255859375, 2602.05859375, 10.8203125, 181.22500610352},
	{1417.6279296875, 2575.7119140625, 10.8203125, 2.765869140625},
	{1564.0166015625, 2759.4189453125, 10.8203125, 94.827209472656},
	{1442.45703125, 2578.4765625, 10.8203125, 10.390472412109},
	{1583.2978515625, 2841.7158203125, 10.8203125, 84.472412109375},
	{1451.0595703125, 2578.697265625, 10.8203125, 1.3760681152344},
	{1503.6611328125, 2578.4052734375, 10.8203125, 2.77685546875},
	{1620.6240234375, 2802.267578125, 10.8203125, 2.90869140625},
	{1551.447265625, 2578.1181640625, 10.8203125, 4.0732421875},
	{1596.7900390625, 2578.2919921875, 10.8203125, 7.6822814941406},
	{1670.8798828125, 2807.716796875, 10.8203125, 347.12109375},
	{1645.458984375, 2577.6748046875, 10.8203125, 0.31036376953125},
	{1603.57421875, 2650.1943359375, 10.8203125, 86.180816650391},
	{1736.32421875, 2697.0087890625, 10.8203125, 5.9189758300781},
	{1783.96484375, 2768.0791015625, 11.34375, 72.184020996094},
	{1752.9892578125, 2747.58984375, 11.34375, 280.40008544922},
	{1637.947265625, 2600.8447265625, 10.8203125, 182.73014831543},
	{1714.0234375, 2831.080078125, 11.34375, 7.9404907226563},
	{1739.28125, 2801.3837890625, 14.273517608643, 20.899078369141},
	{1920.201171875, 2772.384765625, 10.8203125, 82.379486083984},
	{1864.091796875, 2777.0439453125, 11.34375, 145.26617431641},
	{1932.373046875, 2675.98046875, 10.8203125, 5.3696594238281},
	{1969.30859375, 2731.7158203125, 10.8203125, 353.71298217773},
	{2016.642578125, 2758.7119140625, 10.8203125, 178.39599609375},
	{2067.46484375, 2731.896484375, 10.8203125, 355.02584838867},
	{1971.9140625, 2660.7958984375, 10.8203125, 179.59350585938},
	{2048.6953125, 2761.419921875, 10.8203125, 186.69076538086},
	{2098.4111328125, 2653.1533203125, 10.8203125, 89.097717285156},
	{2186.748046875, 2782.3203125, 10.8203125, 191.18424987793},
	{2136.9052734375, 2719.2119140625, 10.8203125, 188.43214416504},
	{987.7578125, 2341.9814453125, 11.46875, 279.96612548828},
	{988.6005859375, 2316.232421875, 11.4609375, 275.17599487305},
	{-177.37890625, 2706.6962890625, 62.6875, 90.641326904297},
	{987.7841796875, 2271.90234375, 11.4609375, 358.21194458008},
	{954.7666015625, 2270.9013671875, 11.46875, 357.83840942383},
	{-177.3486328125, 2741.76953125, 62.6875, 95.920349121094},
	{-204.3388671875, 2761.517578125, 62.642883300781, 177.67633056641},
	{985.4462890625, 2032.791015625, 11.46875, 282.1579284668},
	{-268.8154296875, 2736.3154296875, 62.622749328613, 274.04989624023},
	{1030.3369140625, 2026.1806640625, 11.4609375, 116.22891235352},
	{885.712890625, 2045.439453125, 11.4609375, 271.12200927734},
	{-287.7060546875, 2692.0009765625, 62.6875, 6.0837707519531},
	{982.318359375, 1995.07421875, 11.4609375, 175.40216064453},
	{885.712890625, 1978.66015625, 11.4609375, 271.06158447266},
	{930.498046875, 1925.521484375, 11.4609375, 80.956726074219},
	{1030.80859375, 1847.20703125, 11.4609375, 87.949645996094},
	{1030.2734375, 1974.716796875, 11.46875, 92.65185546875},
	{-606.0859375, 2694.8642578125, 72.375, 178.18725585938},
	{1170.35546875, 1364.1875, 10.812507629395, 42.718231201172},
	{-663.2333984375, 2696.0302734375, 72.375, 231.57611083984},
	{1086.0048828125, 1978.6650390625, 11.46875, 307.65209960938},
	{-731.720703125, 2747.6318359375, 47.2265625, 187.84436035156},
	{1084.373046875, 2033.8720703125, 11.4609375, 290.77685546875},
	{-780.5078125, 2744.2548828125, 45.855598449707, 276.99426269531},
	{-834.0546875, 2740.685546875, 45.64432144165, 188.78370666504},
	{1320.7470703125, 2026.9306640625, 11.4609375, 107.80773925781},
	{1319.7080078125, 1973.7548828125, 11.46875, 130.36853027344},
	{1311.2490234375, 1931.55078125, 11.4609375, 2.5296325683594},
	{-1274.5966796875, 2712.5859375, 50.26628112793, 211.59167480469},
	{1363.9638671875, 1933.0703125, 11.4609375, 278.86749267578},
	{-1438.517578125, 2609.923828125, 55.8359375, 181.10414123535},
	{1364.5078125, 1897.9912109375, 11.46875, 272.91278076172},
	{1846.279296875, 739.0380859375, 11.4609375, 262.40420532227},
	{-1467.7255859375, 2609.8115234375, 55.8359375, 180.03845214844},
	{1408.142578125, 1898.51953125, 11.4609375, 95.563293457031},
	{1844.298828125, 720.85546875, 11.4609375, 277.03271484375},
	{-1470.54296875, 2593.0673828125, 55.8359375, 359.55780029297},
	{1406.7353515625, 1921.25390625, 11.46875, 134.41705322266},
	{-1521.1884765625, 2609.48046875, 55.8359375, 190.54704284668},
	{1845.078125, 693.12109375, 11.453125, 279.58160400391},
	{-1532.3076171875, 2592.4775390625, 55.8359375, 15.515686035156},
	{1444.9033203125, 1951.34375, 11.4609375, 314.56259155273},
	{1843.0185546875, 655.8544921875, 11.4609375, 184.97689819336},
	{1459.5634765625, 1950.01953125, 11.4609375, 33.522552490234},
	{-1536.34375, 2659.6240234375, 55.8359375, 96.738830566406},
	{-1490.041015625, 2681.0009765625, 55.8359375, 184.09246826172},
	{1897.048828125, 679.607421875, 10.8203125, 277.88967895508},
	{1923.0185546875, 663.85546875, 10.8203125, 6.2540588378906},
	{1365.7861328125, 2026.587890625, 11.4609375, 271.99542236328},
	{1957.0439453125, 679.8203125, 14.273241043091, 86.779602050781},
	{1502.634765625, 2027.638671875, 14.739588737488, 181.75785827637},
	{1495.6943359375, 2025.984375, 10.8203125, 270.7209777832},
	{-1353.6630859375, 2055.7421875, 53.1171875, 272.21514892578},
	{1957.0439453125, 725.97265625, 14.281055450439, 89.910736083984},
	{1415.4931640625, 1996.552734375, 10.8203125, 3.4689636230469},
	{1927.75, 742.8740234375, 14.2734375, 188.92652893066},
	{1541.0751953125, 2003.9091796875, 10.8203125, 145.72216796875},
	{1907.4443359375, 742.6904296875, 10.819780349731, 183.28495788574},
	{1455.2841796875, 2032.00390625, 14.739588737488, 267.29870605469},
	{1896.7431640625, 730.5146484375, 10.8203125, 261.61868286133},
	{-792.1943359375, 1626.3203125, 27.15625, 83.6044921875},
	{-814.615234375, 1569.0869140625, 27.1171875, 273.21493530273},
	{1465.1181640625, 1896.6728515625, 11.4609375, 279.49371337891},
	{1465.05859375, 1921.6044921875, 11.4609375, 268.84228515625},
	{2012.9755859375, 650.408203125, 11.4609375, 2.7548522949219},
	{-814.4931640625, 1550.9169921875, 27.1171875, 269.95193481445},
	{-778.0810546875, 1486.6025390625, 23.939994812012, 6.4078674316406},
	{2006.34765625, 698.01171875, 11.4609375, 91.492797851563},
	{-813.16015625, 1485.7353515625, 20.256908416748, 0.81027221679688},
	{-832.6171875, 1484.5625, 18.048372268677, 6.4298706054688},
	{2048.6728515625, 648.578125, 11.4609375, 268.96862792969},
	{2064.2138671875, 650.115234375, 11.4609375, 9.3962097167969},
	{929.068359375, 2008.259765625, 11.4609375, 91.492797851563},
	{-289.7197265625, 872.96502685547, 10.100122451782, 91.70703125},
	{1552.5185546875, 2130.7822265625, 11.4609375, 354.02059936523},
	{-243.0654296875, 1008.1806640625, 19.7421875, 348.59326171875},
	{1550.162109375, 2097.2197265625, 11.4609375, 146.3044128418},
	{-271.5615234375, 1008.32421875, 19.752105712891, 315.29321289063},
	{1552.818359375, 2074.0517578125, 11.359375, 6.2650451660156},
	{-265.8544921875, 1040.6787109375, 19.7421875, 89.751434326172},
	{2091.99609375, 650.6455078125, 11.4609375, 4.205078125},
	{-101.92578125, 1088.4091796875, 19.7421875, 4.4412841796875},
	{2128.6552734375, 648.845703125, 11.4609375, 274.15426635742},
	{-48.4189453125, 1088.4267578125, 19.7421875, 1.8484802246094},
	{2122.1435546875, 695.849609375, 11.453125, 184.97689819336},
	{-39.3671875, 1037.7080078125, 20.2421875, 166.55255126953},
	{2089.490234375, 694.3349609375, 11.4609375, 180.17578125},
	{-37.3720703125, 965.587890625, 19.74829864502, 348.59326171875},
	{-67.83984375, 970.625, 19.903001785278, 61.977569580078},
	{2179.5625, 735.7119140625, 11.4609375, 189.83293151855},
	{-9.626953125, 933.4189453125, 21.049562454224, 229.5051574707},
	{2175.6259765625, 690.7568359375, 11.4609375, 2.7933044433594},
	{-91.2939453125, 892.4765625, 21.091337203979, 49.886932373047},
	{2207.7490234375, 736.28515625, 11.4609375, 192.03022766113},
	{-119.0927734375, 858.525390625, 18.582431793213, 290.19454956055},
	{2659.8515625, 747.607421875, 14.739588737488, 271.90753173828},
	{-150.537109375, 881.5439453125, 18.477848052979, 250.02243041992},
	{2211.8974609375, 688.900390625, 11.4609375, 271.90753173828},
	{-205.2998046875, 1063.662109375, 19.7421875, 271.97344970703},
	{2230.4560546875, 732.345703125, 11.4609375, 178.97277832031},
	{2578.8076171875, 721.466796875, 10.8203125, 92.234405517578},
	{2226.98046875, 689.98828125, 11.453125, 2.9031982421875},
	{-265.171875, 1166.0107421875, 19.805370330811, 85.895141601563},
	{2524.8837890625, 749.3447265625, 10.8203125, 181.90614318848},
	{2011.7431640625, 730.359375, 11.453125, 5.3476867675781},
	{2315.4951171875, 690.814453125, 11.4609375, 2.8262634277344},
	{2047, 731.5751953125, 11.4609375, 1.9033813476563},
	{2449.890625, 741.28125, 11.4609375, 89.405364990234},
	{2353.17578125, 738.0107421875, 11.4609375, 198.47378540039},
	{2092.146484375, 730.3642578125, 11.453125, 5.0345764160156},
	{-88.66015625, 1376.9814453125, 10.2734375, 284.56396484375},
	{2450.353515625, 713.013671875, 11.468292236328, 90.212829589844},
	{2351.939453125, 688.71875, 11.4609375, 285.58023071289},
	{2498.845703125, 690.8291015625, 11.4609375, 91.586181640625},
	{2449.4775390625, 661.5556640625, 11.4609375, 88.196838378906},
	{-92.2001953125, 1229.7265625, 19.7421875, 177.25335693359},
	{1929.849609375, 642.6875, 10.8203125, 180.45593261719},
	{-92.0146484375, 1229.716796875, 22.44026184082, 186.0260925293},
	{2398.8291015625, 655.69921875, 11.4609375, 178.03894042969},
	{-78.16796875, 1233.7412109375, 22.44026184082, 282.85009765625},
	{2366.8544921875, 654.5107421875, 11.4609375, 180.85693359375},
	{-68.197265625, 1223.826171875, 19.650337219238, 90.168914794922},
	{-68.0849609375, 1221.0478515625, 19.665243148804, 90.168914794922},
	{2347.5615234375, 656.1875, 11.460479736328, 180.85693359375},
	{1684.5078125, 2047.8837890625, 11.46875, 276.62622070313},
	{1685.7138671875, 2091.8759765625, 11.4609375, 266.28793334961},
	{13.87890625, 1212.10546875, 19.345182418823, 85.983032226563},
	{2395.0859375, 691.244140625, 11.453125, 7.1384887695313},
	{13.875, 1221.6611328125, 19.338718414307, 89.405364990234},
	{1684.6513671875, 2125.0576171875, 11.4609375, 280.70220947266},
	{2319.0537109375, 655.220703125, 11.453125, 178.43994140625},
	{13.8642578125, 1218.544921875, 22.503162384033, 82.824432373047},
	{13.8525390625, 1231.2919921875, 22.503162384033, 85.642486572266},
	{-25.4560546875, 1215.4033203125, 19.367679595947, 177.92907714844},
	{-19.07421875, 1215.3935546875, 22.464834213257, 182.00503540039},
	{2716.146484375, 863.7333984375, 10.8984375, 125.7541809082},
	{-36.8349609375, 1215.3828125, 22.464834213257, 175.42413330078},
	{2012.9638671875, 774.904296875, 11.4609375, 180.72511291504},
	{-0.884765625, 1184.794921875, 19.408609390259, 271.44610595703},
	{2044.75390625, 776.1005859375, 11.453125, 180.71961975098},
	{-0.8583984375, 1166.1533203125, 19.541616439819, 287.73907470703},
	{2091.8779296875, 774.8994140625, 11.453125, 171.32067871094},
	{11.1416015625, 1182.603515625, 19.57642364502, 185.59211730957},
	{2227.5947265625, 654.896484375, 11.4609375, 182.60380554199},
	{2179.4345703125, 655.9921875, 11.4609375, 181.3458404541},
	{70.8505859375, 1161.970703125, 18.6640625, 4.0897216796875},
	{77.2744140625, 1161.986328125, 18.6640625, 353.43832397461},
	{85.705078125, 1162, 18.6640625, 10.357513427734},
	{99.2646484375, 1169.7109375, 18.6640625, 95.898376464844},
	{99.2841796875, 1177.4423828125, 18.6640625, 100.28198242188},
	{2567.8095703125, 1402.244140625, 11.069893836975, 87.636535644531},
	{99.2646484375, 1177.6767578125, 20.940155029297, 99.968872070313},
	{2567.5751953125, 1456.2275390625, 11.066800117493, 90.460052490234},
	{99.2607421875, 1161.6845703125, 20.940155029297, 104.67108154297},
	{2824.5244140625, 2139.4990234375, 10.8203125, 82.478393554688},
	{2561.8740234375, 1227.2998046875, 10.958598136902, 273.78073120117},
	{2824.521484375, 2136.36328125, 14.661464691162, 90.311767578125},
	{2818.056640625, 2270.3525390625, 10.8203125, 272.64910888672},
	{2539.1298828125, 1212.4189453125, 14.342597961426, 357.8713684082},
	{2795.23828125, 2221.9384765625, 10.8203125, 346.28610229492},
	{2537.0263671875, 1238.322265625, 14.342596054077, 92.789184570313},
	{404.6435546875, 1159.1171875, 7.9110403060913, 238.88761901855},
	{2395.017578125, 1682.4228515625, 11.0234375, 180.29663085938},
	{2364.904296875, 1682.4716796875, 11.0234375, 183.35638427734},
	{2492.25390625, 1264.296875, 10.8125, 29.616851806641},
	{2789.283203125, 2266.9365234375, 14.661463737488, 178.75305175781},
	{2358.69921875, 1652.4873046875, 11.0234375, 268.52368164063},
	{2375.3701171875, 1643.19140625, 11.0234375, 359.16775512695},
	{2610.201171875, 2195.5595703125, 14.116060256958, 357.98123168945},
	{2516.626953125, 1644.50390625, 14.265625, 91.020385742188},
	{2509.82421875, 1682.7978515625, 14.265625, 179.24743652344},
	{2657.130859375, 2234.2900390625, 10.777097702026, 270.87481689453},
	{2490.29296875, 1682.6005859375, 11.0234375, 179.24743652344},
	{1011.7744140625, 1062.791015625, 11, 271.31976318359},
	{2465.232421875, 1682.6083984375, 11.0234375, 163.93774414063},
	{2358.1162109375, 1670.21484375, 14.281055450439, 270.29251098633},
	{2610.3310546875, 2131.6298828125, 10.8203125, 87.911193847656},
	{2545.6572265625, 2203.0576171875, 10.8203125, 177.83563232422},
	{2632.1376953125, 1979.515625, 10.8203125, 354.73474121094},
	{2545.693359375, 2203.052734375, 14.116060256958, 183.45524597168},
	{2633.7607421875, 1968.611328125, 14.116060256958, 181.42276000977},
	{2657.5947265625, 1968.6162109375, 14.116060256958, 184.88349914551},
	{2367.3828125, 2119.6337890625, 10.822855949402, 39.966125488281},
	{2087.751953125, 2189.251953125, 10.8203125, 177.08312988281},
	{2064.2470703125, 2173.7158203125, 10.8203125, 277.66445922852},
	{2080.3046875, 2153.67578125, 10.8203125, 6.0233459472656},
	{2632.5419921875, 2019.0234375, 14.116060256958, 181.49964904785},
	{2624.0087890625, 2068.068359375, 14.116060256958, 272.06683349609},
	{2295.1201171875, 2432.1044921875, 10.8203125, 188.9649810791},
	{2613.53125, 2049.6572265625, 14.116060256958, 90.531463623047},
	{691.814453125, 1952.0517578125, 5.5390625, 184.68574523926},
	{2187.712890625, 2465.865234375, 11.2421875, 270.16616821289},
	{2555.43359375, 2023.046875, 10.81743812561, 357.71206665039},
	{2246.6591796875, 2524.513671875, 10.8203125, 206.11489868164},
	{1664.060546875, 2569.4267578125, 10.8203125, 357.04736328125},
	{2058.1064453125, 2658.583984375, 10.8203125, 179.384765625},
	{2531.009765625, 2023.955078125, 11.069938659668, 177.55004882813},
	{2039.14453125, 2661.078125, 10.8203125, 210.72372436523},
	{2447.3291015625, 2374.9873046875, 12.163512229919, 80.066833496094},
}

function swap(array, index1, index2)
	array[index1], array[index2] = array[index2], array[index1]
end

function shuffleTable(array)
	local counter = #array
	while counter > 1 do
		local index = math.random(counter)
		swap(array, index, counter)
		counter = counter - 1
	end
end