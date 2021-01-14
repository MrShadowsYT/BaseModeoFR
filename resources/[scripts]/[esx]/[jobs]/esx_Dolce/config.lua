Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = true
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'vwcaddy',  label = 'Livraison' },
}

Config.Blips = {
    
    Blip = {
        Pos     = { x = -3057.20, y = 96.69, z = 11.81 },
        Sprite  = 304,
        Display = 4,
        Scale   = 0.7,
        Colour  = 48,
    },

}


Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -3055.57, y = 103.42, z = 11.36 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },

    Vaults = {
        Pos   = { x = -3053.44, y = 104.57, z = 11.36 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },
	
	--[[Vaults = {
        Pos   = { x = -80.935, y = 1002.346, z = 229.65 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },]]

    Fridge = {
        Pos   = { x = -3057.20, y = 96.69, z = 11.83 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },
	

    Vehicles = {
        Pos          = { x = -3006.29, y = 81.68, z = 10.62},
        SpawnPoint   = { x = -2999.81, y = 86.80, z = 10.62 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 57.17,
    },

    VehicleDeleters = {
        Pos   = { x = -3000.63, y = 80.46, z = 10.63 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 23,
    },


    BossActions = {
        Pos   = { x = -3035.61, y = 78.86, z = 11.83 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 2736.17, y = 3471.51, z = 54.80 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
        Items = {
			{ name = 'jager',      label = _U('jager'),     price = 50 },
            { name = 'vodka',      label = _U('vodka'),     price = 50 },
            { name = 'rhum',       label = _U('rhum'),      price = 50 },
            { name = 'whisky',     label = _U('whisky'),    price = 50 },
            { name = 'tequila',    label = _U('tequila'),   price = 50 },
            { name = 'martini',    label = _U('martini'),   price = 50 },
            { name = 'champagne',  label = _U('champagne'), price = 175 },
            { name = 'pastis',     label = _U('pastis'),    price = 50 },
            { name = 'get',        label = _U('get'),       price = 50 },
            { name = 'energy',     label = _U('energy'),    price = 30 },
            { name = 'cola',       label = _U('cola'),      price = 35 },
            { name = 'jusfruit',   label = _U('jusfruit'),  price = 30 },
            { name = 'bolcacahuetes', label = _U('bolcacahuetes'), price = 10 },
            { name = 'cafe',       label = _U('cafe'),      price = 3 },
            { name = 'chocolatchaud', label = _U('chocolatchaud'), price = 15 },
            { name = 'bierepression', label = _U('bierepression'), price = 30 },
            { name = 'feuilledetabac', label = _U('feuilledetabac'), price = 1 },
            { name = 'limonade',   label = _U('limonade'), price = 3 },
            { name = 'gin', label = _U('gin'), price = 5 }, 
            { name = 'calvados', label = _U('calvados'), price = 5 },
            { name = 'filtre', label = _U('filtre'), price = 1 },
            { name = 'papier', label = _U('papier'), price = 1 },
            { name = 'cointreau', label = _U('cointreau'), price = 5 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 10 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 10 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 5 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 25 },
            { name = 'icetea',      label = _U('icetea'),   price = 20 },
            { name = 'ice',      label = _U('ice'),   price = 1 },
            { name = 'diabolo', label = _U('diabolo'), price = 30 },
			{ name = 'kebab', label = _U('kebab'), price = 30 },
			{ name = 'pizzaf', label = _U('pizzaf'), price = 30 },
			{ name = 'pizzama', label = _U('pizzama'), price = 30 },
			{ name = 'pizzaan', label = _U('pizzaan'), price = 40 },
			{ name = 'pizzaqfr', label = _U('pizzaqfr'), price = 40 },
			{ name = 'pizzaro', label = _U('pizzaro'), price = 40 },
			{ name = 'panzzani', label = _U('panzzani'), price = 20 },
			{ name = 'panzzanip', label = _U('panzzanip'), price = 30 },
			{ name = 'pizzamo', label = _U('pizzamo'), price = 35 }
        },
    },

    --[[ Flacons = {
        Pos   = { x = -1586.97, y = -3012.73, z = -77.00 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 23,
        Items = {
            { name = 'jager',      label = _U('jager'),   price = 7 },
            { name = 'vodka',      label = _U('vodka'),   price = 8 },
            { name = 'rhum',       label = _U('rhum'),    price = 7 },
            { name = 'whisky',     label = _U('whisky'),  price = 7 },
            { name = 'tequila',    label = _U('tequila'), price = 8 },
            { name = 'martini',    label = _U('martini'), price = 7 }
        },
    },

    NoAlcool = {
        Pos   = { x = -1577.56, y = -3014.65, z = -80.00 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
        Items = {
            { name = 'soda',        label = _U('soda'),     price = 2 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 3 },
            { name = 'icetea',      label = _U('icetea'),   price = 4 },
            { name = 'energy',      label = _U('energy'),   price = 7 },
            { name = 'drpepper',    label = _U('drpepper'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 1 }
        },
    },

    Apero = {
        Pos   = { x = -1584.58, y = -3012.67, z = -77.00 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 2 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 2 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 2 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 3 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 5 },
            { name = 'grapperaisin',    label = _U('grapperaisin'),     price = 3 }
        },
    },--]]
}



Config.Uniforms = {
  barman_outfit = {
    male = {
        ['tshirt_1'] = 22,  ['tshirt_2'] = 0,
        ['torso_1'] = 40,   ['torso_2'] = 1,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 1,
        ['pants_1'] = 24,   ['pants_2'] = 0,
        ['shoes_1'] = 10,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 33,    ['torso_2'] = 1,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 4,
        ['pants_1'] = 57,   ['pants_2'] = 0,
        ['shoes_1'] = 14,    ['shoes_2'] = 9,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  },
  dancer_outfit_1 = {
    male = {
        ['tshirt_1'] = 22,  ['tshirt_2'] = 2,
        ['torso_1'] = 21,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 1,
        ['pants_1'] = 24,   ['pants_2'] = 5,
        ['shoes_1'] = 10,   ['shoes_2'] = 7,
        ['chain_1'] = 0,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 159,   ['tshirt_2'] = 0,
        ['torso_1'] = 250,    ['torso_2'] = 5,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 0,
        ['pants_1'] = 76,   ['pants_2'] = 0,
        ['shoes_1'] = 80,    ['shoes_2'] = 25,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  }
 -- dancer_outfit_2 = {
  --  male = {
    --    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
    --    ['torso_1'] = 62,   ['torso_2'] = 0,
    --    ['decals_1'] = 0,   ['decals_2'] = 0,
     --   ['arms'] = 14,
     --   ['pants_1'] = 4,    ['pants_2'] = 0,
     --   ['shoes_1'] = 34,   ['shoes_2'] = 0,
     --   ['chain_1'] = 118,  ['chain_2'] = 0
    --},
    --female = {
    --    ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
    --    ['torso_1'] = 22,   ['torso_2'] = 2,
      --  ['decals_1'] = 0,   ['decals_2'] = 0,
      --  ['arms'] = 4,
    --    ['pants_1'] = 20,   ['pants_2'] = 2,
    --    ['shoes_1'] = 18,   ['shoes_2'] = 2,
    --    ['chain_1'] = 0,    ['chain_2'] = 0
    --}
  --},
  --dancer_outfit_3 = {
    --male = {
    --    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
    --    ['torso_1'] = 15,   ['torso_2'] = 0,
    --    ['decals_1'] = 0,   ['decals_2'] = 0,
    --    ['arms'] = 15,
    --    ['pants_1'] = 4,    ['pants_2'] = 0,
    --    ['shoes_1'] = 34,   ['shoes_2'] = 0,
    --    ['chain_1'] = 118,  ['chain_2'] = 0
    --},
    --female = {
    --    ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
    --    ['torso_1'] = 22,   ['torso_2'] = 1,
    --    ['decals_1'] = 0,   ['decals_2'] = 0,
    --    ['arms'] = 15,
    --    ['pants_1'] = 19,   ['pants_2'] = 1,
    --    ['shoes_1'] = 19,   ['shoes_2'] = 3,
    --    ['chain_1'] = 0,    ['chain_2'] = 0
    --}
  --}
}
