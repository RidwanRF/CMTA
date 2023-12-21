local bankToModels = {
	{ -- 33
		602, 496, 401, 527, 589, 587, 533, 526, 517, 600, 436, 491, 445,
		507, 585, 492, 546, 551, 426, 547, 405, 580, 409, 550, 566, 540,
		421, 529, 420, 490, 596, 598, 599, 597, 554, 579, 400, 489, 505,
		479, 458, 535, 402, 603, 429, 541, 415, 480, 562, 565, 494, 502,
		503, 411, 559, 561, 560, 506, 451, 558, 477, 500, 495, 609
	},
	{ -- 34
		518, 419, 474, 545, 410, 439, 549, 604, 466, 516, 467, 438, 605,
		543, 404, 536, 575, 534, 567, 576, 412, 542, 475, 434, 555
	},
	{ -- 35
		525, 552, 416, 528, 470, 428, 459, 422, 482, 582, 413, 440, 478,
		483, 418
	}
}

local modelsToBank = {}

for i = 1, #bankToModels do
	for k = 1, #bankToModels[i] do
		local v = bankToModels[i][k]

		if getVehicleType(v) == "Automobile" then
			modelsToBank[v] = 1 + i
		elseif getVehicleType(v) == "Helicopter" then
			modelsToBank[v] = 1
		end
	end
end

local sfxParsed = {}

for i = 400, 611 do
	local vehicleType = getVehicleType(i)

	if vehicleType == "Automobile" then
		if modelsToBank[i] then
			sfxParsed[i] = modelsToBank[i]
		end
	elseif vehicleType == "Helicopter" then
		sfxParsed[i] = 1
	end
end

function getDoorOpenSound(model)
	if sfxParsed[model] then
		return ":see_vehiclepanel/files/door/" .. sfxParsed[model] + 5 .. ".wav"
	end

	return false
end

function getDoorCloseSound(model)
	if sfxParsed[model] then
		return ":see_vehiclepanel/files/door/" .. sfxParsed[model] .. ".wav"
	end

	return false
end

fuelTankSize = {
	[561] = 62,
	[527] = 61,
	[426] = 72,
	[400] = 90,
	[540] = 60,
	[596] = 75,
	[589] = 55,
	[587] = 74,
	[585] = 75,
	[580] = 61,
	[566] = 70,
	[560] = 65,
	[558] = 63,
	[554] = 100,
	[551] = 95,
	[550] = 80,
	[529] = 70,
	[507] = 90,
	[506] = 65,
	[502] = 85,
	[458] = 70,
	[451] = 90,
	[445] = 70,
	[429] = 97,
	[421] = 88,
	[420] = 80,
	[415] = 100,
	[411] = 95,
	[405] = 82,
	[401] = 90,
	[579] = 98,
	[491] = 70,
	[603] = 68,
	[600] = 75,
	[576] = 60,
	[567] = 75,
	[543] = 75,
	[536] = 68,
	[492] = 70,
	[479] = 87,
	[467] = 87,
	[466] = 91,
	[439] = 72,
	[412] = 90,
	[410] = 80,
	[402] = 64,
	[542] = 71,
	[535] = 70,
	[517] = 70,
	[525] = 75,
	[438] = 85,
	[436] = 70,
	[602] = 55,
	[586] = 15,
	[565] = 55,
	[562] = 60,
	[559] = 60,
	[547] = 64,
	[531] = 40,
	[526] = 65,
	[516] = 70,
	[508] = 75,
	[496] = 50,
	[477] = 120,
	[470] = 150,
	[463] = 18,
	[462] = 6,
	[456] = 120,
	[453] = 80,
	[452] = 75,
	[448] = 6,
	[446] = 75,
	[437] = 240,
	[431] = 240,
	[418] = 83,
	[416] = 80,
	[413] = 75,
	[409] = 72,
	[408] = 140,
	[521] = 24,
	[522] = 21,
	[475] = 22
}

function getTheFuelTankTable()
	return fuelTankSize
end

function getTheFuelTankSizeOfVehicle(model)
	return fuelTankSize[model] or 50
end

consumptions = {
	[561] = 0.72,
	[527] = 0.96,
	[426] = 0.96,
	[400] = 1.62,
	[540] = 0.6,
	[596] = 1.08,
	[589] = 0.66,
	[587] = 1.02,
	[585] = 1.08,
	[580] = 0.78,
	[566] = 0.36,
	[560] = 0.66,
	[558] = 0.72,
	[554] = 1.14,
	[551] = 0.9,
	[550] = 0.66,
	[529] = 0.54,
	[507] = 1.02,
	[506] = 0.72,
	[502] = 0.78,
	[458] = 0.42,
	[451] = 0.96,
	[445] = 0.9,
	[429] = 0.9,
	[421] = 0.84,
	[420] = 0.9,
	[415] = 1.38,
	[411] = 1.08,
	[405] = 0.48,
	[401] = 1.08,
	[579] = 1.32,
	[491] = 1.02,
	[603] = 1.56,
	[600] = 1.32,
	[576] = 1.02,
	[567] = 0.96,
	[543] = 0.9,
	[536] = 0.78,
	[492] = 0.84,
	[479] = 0.72,
	[467] = 0.72,
	[466] = 0.6,
	[439] = 0.84,
	[412] = 1.02,
	[410] = 1.08,
	[402] = 1.44,
	[542] = 0.84,
	[535] = 0.84,
	[517] = 0.9,
	[525] = 0.72,
	[438] = 0.72,
	[436] = 0.54,
	[602] = 0.9,
	[586] = 0.24,
	[565] = 0.6,
	[562] = 0.66,
	[559] = 0.54,
	[547] = 0.72,
	[531] = 0.6,
	[526] = 0.9,
	[516] = 1.26,
	[508] = 0.9,
	[496] = 0.42,
	[477] = 1.08,
	[470] = 1.26,
	[463] = 0.24,
	[462] = 0.12,
	[456] = 1.2,
	[453] = 0.48,
	[452] = 0.72,
	[448] = 0.12,
	[446] = 0.72,
	[437] = 2.16,
	[431] = 2.16,
	[418] = 1.02,
	[416] = 0.72,
	[413] = 0.9,
	[409] = 0.72,
	[408] = 1.32,
	[512] = 0.36,
	[522] = 0.24,
	[472] = 1.32
}

function getTheConsumptionTable()
	return consumptions
end

function getTheConsumptionOfVehicle(model)
	return consumptions[model] or 1
end