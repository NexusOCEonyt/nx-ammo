QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("box-ammo-rifle2", function(source)
    TriggerClientEvent('nexusammo:useRifle2Ammo', source)
end)

RegisterNetEvent('nexusammo:addRifle2Ammo')
AddEventHandler('nexusammo:addRifle2Ammo', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player.Functions.GetItemByName('box-ammo-rifle2') then
        player.Functions.RemoveItem('box-ammo-rifle2', 1)
        player.Functions.AddItem('ammo-rifle2', 30)
    end
end)
