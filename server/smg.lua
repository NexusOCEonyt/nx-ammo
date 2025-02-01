QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("box-ammo-45", function(source)
    TriggerClientEvent('nexusammo:useSMGAmmo', source)
end)

RegisterNetEvent('nexusammo:addSMGAmmo')
AddEventHandler('nexusammo:addSMGAmmo', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player.Functions.GetItemByName('box-ammo-45') then
        player.Functions.RemoveItem('box-ammo-45', 1)
        player.Functions.AddItem('ammo-45', 30)
    end
end)
