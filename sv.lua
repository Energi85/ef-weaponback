ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)





RegisterNetEvent('ef-weaponback:bagcheck')
AddEventHandler('ef-weaponback:bagcheck', function()
local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local itemQuantity = xPlayer.getInventoryItem('bag').count
    if itemQuantity >= 1 then
        TriggerClientEvent('ef-weaponback:hasbag', source)
else
    TriggerClientEvent('ef-weaponback:hasnobag', source)
    end
        end


end)



