Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 20
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 0, b = 0 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'fr'


Config.GangStations = {

  Gang = {

    Blip = {
			Coords  = vector3(-135.88, -1593.22, 34.24),
			Sprite  = 429,
			Display = 4,
			Scale   = 0.7,
			Colour  = 25
		},


	  AuthorizedVehicles = {
      { name = 'buffalo2',  label = 'Buffalo' },
      { name = 'voodoo',  label = 'Voodoo' },
      { name = "bmx", label = "bmx"},
      { name = "sanchez", label = "cross"},
    },
    
    AuthorizedWeapons = {
      { name = 'weapon_bat',     price = 5000 },
      { name = 'weapon_knuckle',     price = 3750 },
    },

    Armories = {
      { x = -136.69, y = -1609.12, z = 35.03},
    },

    Vehicles = {
      {
        Spawner    = { x = -219.72, y = -1635.08, z = 33.55 },
        SpawnPoint = { x = -211.69, y = -1635.33, z = 33.24 },
        Heading    = 268.04,
      }
    },

    VehicleDeleters = {
      { x = -189.17, y = -1585.31, z = 34.77 },
      
    },

    BossActions = {
      { x = -157.40, y = -1603.01, z = 35.04 },
    },

  },

}
