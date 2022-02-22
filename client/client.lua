ESX = nil
Citizen.CreateThread(function)
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)    

RegisterNetEvent('Westen:bproof')
AddEventHandler('Westen:bproof', function)

    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral_a'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(3000)
    ClearPedTasks(playerPed)

    AddPedArmour(playerPed, 50)
    TriggerEvent('skinchanger:change', 'bproof_1', 15)
-- anim
-- armour
-- skin

end)