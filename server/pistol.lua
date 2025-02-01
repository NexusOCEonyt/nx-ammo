QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("box-ammo-9", function(source)
    TriggerClientEvent('nexusammo:usePistolAmmo', source)
end)

RegisterNetEvent('nexusammo:addPistolAmmo')
AddEventHandler('nexusammo:addPistolAmmo', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player.Functions.GetItemByName('box-ammo-9') then
        player.Functions.RemoveItem('box-ammo-9', 1)
        player.Functions.AddItem('ammo-9', 30)
    end
end)
