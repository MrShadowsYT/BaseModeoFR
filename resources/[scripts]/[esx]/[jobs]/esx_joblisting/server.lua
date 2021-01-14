ESX              = nil
local PlayerData = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('polemploi:abatteur')
AddEventHandler('polemploi:abatteur', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("slaughterer", 0)	
end)

RegisterNetEvent('polemploi:mineur')
AddEventHandler('polemploi:mineur', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("miner", 0)	
end)

RegisterNetEvent('polemploi:bucheron')
AddEventHandler('polemploi:bucheron', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("lumberjack", 0)	
end)


RegisterNetEvent('polemploi:pecheur')
AddEventHandler('polemploi:pecheur', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("fisherman", 0)	
end)

RegisterNetEvent('polemploi:couturier')
AddEventHandler('polemploi:couturier', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("tailor", 0)	
end)

RegisterNetEvent('polemploi:chomeur1')
AddEventHandler('polemploi:chomeur1', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("unemployed", 0)	
end)

RegisterNetEvent('polemploi:chomeur2')
AddEventHandler('polemploi:chomeur2', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob2("unemployed2", 0)	
end)

