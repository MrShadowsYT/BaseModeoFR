ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_lapdance:Buy')
AddEventHandler('esx_lapdance:Buy', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    
    if(xPlayer.getMoney() >= 250) then
        local societyAccount = nil
        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_unicorn', function(account)
            societyAccount = account
        end)
        if societyAccount ~= nil then
            societyAccount.addMoney(250)
        end
        xPlayer.removeMoney(250)
        TriggerClientEvent('esx_lapdance:lapdance', _source)
        sendNotification(_source, 'Vous avez demandé une danse privée pour 250€', 'success', 2500)
    else
       sendNotification(_source, 'Vous n\'avez pas 250€', 'error', 2500)
    end

end)

--notification
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "lmao",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end