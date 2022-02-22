ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bproof', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.remoceInventoryItem('bproof', 1)
    TriggerClientEvent('Westen:bproof', source)

end)
