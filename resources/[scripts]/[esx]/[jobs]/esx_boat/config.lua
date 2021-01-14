Config               = {}

Config.Locale        = 'fr'

Config.LicenseEnable = true -- enable boat license? Requires esx_license
Config.LicensePrice  = 45000
Config.MarkerType    = 35
Config.DrawDistance  = 100.0

Config.Marker = {
	r = 100, g = 204, b = 100, -- blue-ish color
	x = 1.5, y = 1.5, z = 1.0  -- standard size circle
}

Config.StoreMarker = {
	r = 255, g = 0, b = 0,     -- red color
	x = 5.0, y = 5.0, z = 1.0  -- big circle for storing boat
}

Config.Zones = {

	Garages = {
		{ -- Shank St, nearby campaign boat garage
			GaragePos  = vector3(-719.49, -1326.01, 1.6),
			SpawnPoint = vector4(-723.15, -1330.01, 0.47, 230.76),
			StorePos   = vector3(-722.15, -1336.39, 0.12),
			StoreTP    = vector4(-724.56, -1334.52, 1.6, 138.37)
		},

		{ -- Catfish View
			GaragePos  = vector3(3864.9, 4463.9, 1.6),
			SpawnPoint = vector4(3854.4, 4477.2, 0.0, 273.0),
			StorePos   = vector3(3857.0, 4446.9, 0.0),
			StoreTP    = vector4(3854.7, 4458.6, 1.8, 355.3)
		},

		{ -- Great Ocean Highway
			GaragePos  = vector3(-1614.0, 5260.1, 2.8),
			SpawnPoint = vector4(-1622.5, 5247.1, 0.0, 21.0),
			StorePos   = vector3(-1600.3, 5261.9, 0.0),
			StoreTP    = vector4(-1605.7, 5259.0, 2.0, 25.0)
		},

		{ -- North Calafia Way
			GaragePos  = vector3(712.6, 4093.3, 33.7),
			SpawnPoint = vector4(712.8, 4080.2, 29.3, 181.0),
			StorePos   = vector3(705.1, 4110.1, 30.2),
			StoreTP    = vector4(711.9, 4110.5, 31.3, 180.0)
		},

		{ -- Elysian Fields, nearby the airport
			GaragePos  = vector3(23.8, -2806.8, 4.8),
			SpawnPoint = vector4(23.3, -2828.6, 0.8, 181.0),
			StorePos   = vector3(-1.0, -2799.2, 0.5),
			StoreTP    = vector4(12.6, -2793.8, 2.5, 355.2)
		},
		
		{ -- Micky
			GaragePos  = vector3(3373.81, 5183.47, 0.46),
			SpawnPoint = vector4(3372.37, 5190.07, 0.0, 262.30),
			StorePos   = vector3(3372.37, 5190.07, 0.0),
			StoreTP    = vector4(3370.733, 5184.03, 0.46, 98.78)
		},
		
		{ -- Mr Hit
			GaragePos  = vector3(-5785.64, 1135.109, 1.8),
			SpawnPoint = vector4(-5785.0, 1125., 0.0, 262.30),
			StorePos   = vector3(-5776.0, 1137., 0.0),
			StoreTP    = vector4(-5785.64, 1135.109, 1.8, 2.5)
		},

		{ -- Barbareno Rd
			GaragePos  = vector3(-3427.3, 956.9, 7.3),
			SpawnPoint = vector4(-3448.9, 953.8, 0.0, 75.0),
			StorePos   = vector3(-3436.5, 946.6, 0.3),
			StoreTP    = vector4(-3427.0, 952.6, 8.3, 0.0)
		}
	},

	BoatShops = {
		{ -- Shank St, nearby campaign boat garage
			Outside = vector3(-712.78, -1298.28, 5.1),
			Inside = vector4(-732.170, -1333.93, -0.5, 230.768)
		}
	}

}

Config.Vehicles = {
	{model = 'seashark', label = 'Seashark (Couleur Aléatoire)', price = 150000},
	{model = 'seashark3', label = 'Seashark (Bleu nuit)', price = 155000},
	{model = 'suntrap', label = 'Suntrap', price = 190000},
	{model = 'jetmax', label = 'Jetmax', price = 400000},
	{model = 'tropic2', label = 'Tropic', price = 255000},
	{model = 'dinghy2', label = 'Dinghy (Noir)', price = 350000},
	{model = 'dinghy', label = 'Dinghy 2 (Couleur Aléatoire)', price = 325000},
	{model = 'speeder', label = 'Speeder', price = 380000},
	{model = 'squalo', label = 'Squalo (Couleur Aléatoire)', price = 325000},
	{model = 'toro', label = 'Toro', price = 500000},
	{model = 'marquis', label = 'Marquis', price = 240000},
	{model = 'submersible', label = 'Submersible', price = 3500000},
	{model = 'sr650fly', label = 'Sea Ray 650 fly', price = 3500000}
}