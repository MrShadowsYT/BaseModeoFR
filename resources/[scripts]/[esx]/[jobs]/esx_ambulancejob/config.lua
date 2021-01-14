Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = false -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.NPCJobEarnings             = {min = 300, max = 550}
Config.MinimumDistance            = 3000 -- Minimum NPC job destination distance from the pickup in GTA units, a higher number prevents nearby destionations.


Config.RespawnPoint = {coords = vector3(341.0, -1397.3, 32.5), heading = 48.5}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(278.32, -585.67, 43.31),
			sprite = 61,
			scale  = 0.7,
			color  = 0
		},

		AmbulanceActions = {
			vector3(299.26, -598.35, 42.35)
		},
		
		Pharmacies = {
			vector3(306.67, -601.48, 42.30)
		},
		
		Coffre = {
			vector3(303.92, -600.12, 42.30)
		},


		Vehicles = {
			--[[{
				Spawner = vector3(373.6, -1442.0, 29.4),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(369.7, -1450.5, 28.4), heading = 227.6, radius = 4.0 },
					{ coords = vector3(367.2, -1453.7, 28.4), heading = 227.6, radius = 4.0 },
					{ coords = vector3(364.7, -1456.6, 28.4), heading = 227.6, radius = 6.0 }
				}
			}--]]

			{
				Spawner = vector3(329.18, -559.55, 28.80),

				Marker = { type = 36, x = 2.0, y = 2.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoint = {
                x = 342.11, y = -559.3, z = 28.74}, 
				Heading    = 346.49
			},

		},

		Helicopters = {
			{
				Spawner = vector3(343.26, -580.86, 74.16),
				InsideShop = vector3(327.249, -600.656, 43.283),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.54, -587.71, 73.20), heading = 228.82, radius = 10.0 }
				}
			}
		},
		FastTravels = {
			
	   },

		FastTravelsPrompt = {
			{ -- Entrée hopital
				From = vector3(293.825, -1447.421, -25.966),
				To = { coords = vector3(275.279, -1361.110, -13.537), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 0, g = 160, b = 255, a = 100, rotate = false },
				Prompt = _U('door_enter')
			},

			{ -- Sortie hopital
				From = vector3(275.279, -1361.110, -13.537),
				To = { coords = vector3(295.726, -1449.121, -10.966), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 0, g = 160, b = 255, a = 100, rotate = false },
				Prompt = _U('door_exit')
			},

			{ -- Ascenseur hélico bas
                From = vector3(372.05, -1421.46, 31.60),
                To = { coords = vector3(334.28, -1432.65, 45.60), heading = 0.0 },
                Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 0, g = 160, b = 255, a = 100, rotate = false },
                Prompt = _U('fast_travel')
            },

			{ -- Ascenseur hélico haut
				From = vector3(334.28, -1432.65, 45.60),
				To = { coords = vector3(372.05, -1421.46, 31.60), heading = 315.0 },
			    Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 0, g = 160, b = 255, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'ambulance',
			label = 'Ambulance Pompier',
			cat = 'vehicle',
			limit = 8
		},
		{
			model = 'emsdef',
			label = 'VL Pompier',
			cat = 'vehicle',
			limit = 8
		},
		{
			model = 'gnr_thilux',
			label = 'Thilux Samu',
			cat = 'vehicle',
			limit = 8
		},
		{
			model = 'anpc_npathfinder',
			label = 'Nissan Samu',
			cat = 'vehicle',
			limit = 8
		},
		{
			model = 'firetruk',
			label = 'Gros camion pompier',
			cat = 'vehicle',
			limit = 8
		},
		{
			model = 'rsb_mbsprinter',
			label = 'VSAV Samu',
			cat = 'vehicle',
			limit = 8
		},
	},
}

Config.AuthorizedHelicopters = {

	list = {
		{model = 'swift', label = 'Hélico Samu', limit = 2, cat = 'helicopter'}
	},
	 
	intern = {},

	doctor = {
		{
			model = 'swift',
			label = 'Hélico Samu',
			limit = 2
		}
	},

	chief_doctor = {
		{
			model = 'swift',
			label = 'Hélico Samu',
			limit = 2
		}
	},

	chief = {
		{
			model = 'swift',
			label = 'Hélico Samu',
			limit = 2
		}
	},

	boss = {
		{
			model = 'swift',
			label = 'Hélico Samu',
			limit = 2
		}
	}

}

Config.JobLocations = {
	{x = 364.784,  y = -590.119, z = 28.25},
}

Config.Uniforms = {

  intern_wear = {
    male = {

        ['tshirt_1'] = 129, ['tshirt_2'] = 0,
        ['torso_1'] = 93, ['torso_2'] = 1,
        ['arms'] = 85,
        ['pants_1'] = 46, ['pants_2'] = 0,           --pompier h
        ['shoes_1'] = 25, ['shoes_2'] = 0,

    },
    female = {

        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 0,
        ['arms'] = 109,
        ['pants_1'] = 3, ['pants_2'] = 0,           --pompier f
        ['shoes_1'] = 52, ['shoes_2'] = 0,


    }
  },

  doctor_wear = {
    male = {

        ['tshirt_1'] = 129, ['tshirt_2'] = 0,
        ['torso_1'] = 93, ['torso_2'] = 1,
        ['arms'] = 85,
        ['pants_1'] = 46, ['pants_2'] = 0,           --pompier h
        ['shoes_1'] = 25, ['shoes_2'] = 0,

    },
    female = {

        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 0,
        ['arms'] = 109,
        ['pants_1'] = 3, ['pants_2'] = 0,           --pompier f
        ['shoes_1'] = 52, ['shoes_2'] = 0,


    }
  },

  chief_doctor_wear = {
    male = {

        ['tshirt_1'] = 129, ['tshirt_2'] = 0,
        ['torso_1'] = 93, ['torso_2'] = 1,
        ['arms'] = 85,
        ['pants_1'] = 46, ['pants_2'] = 0,           --pompier h
        ['shoes_1'] = 25, ['shoes_2'] = 0,

    },
    female = {

        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 0,
        ['arms'] = 109,
        ['pants_1'] = 3, ['pants_2'] = 0,           --pompier f
        ['shoes_1'] = 52, ['shoes_2'] = 0,


    }
  },

  chief_wear = {
    male = {

        ['tshirt_1'] = 129, ['tshirt_2'] = 0,
        ['torso_1'] = 93, ['torso_2'] = 1,
        ['arms'] = 85,
        ['pants_1'] = 46, ['pants_2'] = 0,           --pompier h
        ['shoes_1'] = 25, ['shoes_2'] = 0,

    },
    female = {

        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 0,
        ['arms'] = 109,
        ['pants_1'] = 3, ['pants_2'] = 0,           --pompier f
        ['shoes_1'] = 52, ['shoes_2'] = 0,


    }
  },

  boss_wear = {
    male = {

        ['tshirt_1'] = 129, ['tshirt_2'] = 0,
        ['torso_1'] = 93, ['torso_2'] = 1,
        ['arms'] = 85,
        ['pants_1'] = 46, ['pants_2'] = 0,           --pompier h
        ['shoes_1'] = 25, ['shoes_2'] = 0,

    },
    female = {

        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 0,
        ['arms'] = 109,
        ['pants_1'] = 3, ['pants_2'] = 0,           --pompier f
        ['shoes_1'] = 52, ['shoes_2'] = 0,


    }
  },

  boss2_wear = {
    male = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
        ['torso_1'] = 9, ['torso_2'] = 13,
        ['arms'] = 85, ['arms_2'] = 0,             --samu h
        ['pants_1'] = 25, ['pants_2'] = 0,
        ['shoes_1'] = 42, ['shoes_2'] = 0,
        ['chain_1'] = 126, ['chain_2'] = 0,


    },
    female = {
        ['tshirt_1'] = 159, ['tshirt_2'] = 0,
        ['torso_1'] = 84, ['torso_2'] = 1,
        ['arms'] = 96,
        ['pants_1'] = 23, ['pants_2'] = 0,           --samu f
        ['shoes_1'] = 1, ['shoes_2'] = 6,
        ['chain_1'] = 96, ['chain_2'] = 0,


    }
  },
}