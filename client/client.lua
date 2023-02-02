local QBCore = exports['qb-core']:GetCoreObject()  

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 


RegisterNetEvent('LC-Cigarette:smoke', function()
    QBCore.Functions.Progressbar("smoke_cig", "Lighting Cig..", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
        end
		TriggerServerEvent('hud:server:RelieveStress', math.random(10, 50))
    end)
end)
