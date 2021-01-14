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
			Coords  = vector3(772.91, -258.51, 66.11),
			Sprite  = 429,
			Display = 4,
			Scale   = 0.7,
			Colour  = 19
		},


	  AuthorizedVehicles = {
      { name = 'sultan',  label = 'Sultan' },
      { name = 'buccaneer',  label = 'Buccaneer' },
    },
    
    AuthorizedWeapons = {
      { name = 'weapon_bat',     price = 5000 },
      { name = 'weapon_knuckle',     price = 3750 },
    },

    Armories = {
      { x = 816.03, y = -231.36, z = 66.74},
    },

    Vehicles = {
      {
        Spawner    = { x = 806.65, y = -270.94, z = 66.24 },
        SpawnPoint = { x = 805.77, y = -268.20, z = 66.28 },
        Heading    = 357.58,
      }
    },

    VehicleDeleters = {
      { x = 814.13, y = -271.30, z = 65.90 },
      
    },

    BossActions = {
      { x = 802.59, y = -277.95, z = 66.37 },
    },

  },

}
