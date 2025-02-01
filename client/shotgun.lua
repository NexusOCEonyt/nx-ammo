local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('nexusammo:useShotgunAmmo')
AddEventHandler('nexusammo:useShotgunAmmo', function()
    local src = source

    if lib.progressCircle({
        label = 'Unpacking Shotgun Ammo....',
        duration = 5000,
        position = 'bottom-middle',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true},
        anim = {
            dict = 'missheistfbisetup1',
            clip = 'hassle_intro_loop_f'
        },
    }) then
        TriggerServerEvent('nexusammo:addShotgunAmmo')
    end
end)


--[[lib.progressCircle({
        duration = 5000,
        label = 'Unpacking Ammo Box...',
        useWhileDead = false,
        position = 'bottom', -- Make sure 'position' is a valid option for your library
        canCancel = true,
        onFinish = function(cancelled)
            if not cancelled then
                print("Progress finished, attempting to trigger server event...")
                TriggerServerEvent('nexusammo:addAmmo', 30)
            else
                print("Progress was canceled.")
            end
        end,        
    })]]

--[[exports['progressbar']:Progress({
        name = 'picking_opium',
        duration = 5000, 
        label = 'Picking Raw opium...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = 'mini@repair',
            anim = 'fixing_a_player',
        },
    }, function(cancelled)
        if not cancelled then
            TriggerServerEvent('nexusammo:addAmmo', 30)
        end
    end)]]