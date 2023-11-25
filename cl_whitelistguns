ESX = exports["es_extended"]:getSharedObject()

local whitelistedWeapons = {
    ['WEAPON_GLOCK40'] = true,
    ['WEAPON_CARBINERIFLE_MK2'] = true,
    ['WEAPON_STUNGUN'] = true,
}

AddEventHandler('ox_inventory:currentWeapon', function(item)
    if whitelistedWeapons[item?.name] and ESX.PlayerData.job.name ~= 'police' then
        TriggerEvent('ox_inventory:disarm')
        TriggerServerEvent('whyyou:gotagun')
    end
end)
