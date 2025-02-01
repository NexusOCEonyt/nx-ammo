QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("box-ammo-shotgun", function(source)
    TriggerClientEvent('nexusammo:useShotgunAmmo', source)
end)

RegisterNetEvent('nexusammo:addShotgunAmmo')
AddEventHandler('nexusammo:addShotgunAmmo', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player.Functions.GetItemByName('box-ammo-shotgun') then
        player.Functions.RemoveItem('box-ammo-shotgun', 1)
        player.Functions.AddItem('ammo-shotgun', 16)
    end
end)
