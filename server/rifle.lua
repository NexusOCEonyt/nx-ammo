QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("box-ammo-rifle", function(source)
    TriggerClientEvent('nexusammo:useRifleAmmo', source)
end)

RegisterNetEvent('nexusammo:addRifleAmmo')
AddEventHandler('nexusammo:addRifleAmmo', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player.Functions.GetItemByName('box-ammo-rifle') then
        player.Functions.RemoveItem('box-ammo-rifle', 1)
        player.Functions.AddItem('ammo-rifle', 30)
    end
end)
