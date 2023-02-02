local QBCore = exports['qb-core']:GetCoreObject()  


QBCore.Functions.CreateUseableItem(Config.CigName, function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(Config.LighterItemName) then
			if Player.Functions.RemoveItem(Config.CigName, 1) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.CigName], 'remove', 1)
				TriggerClientEvent("LC-Cigarette:smoke", src)
			end
    else
       	TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)