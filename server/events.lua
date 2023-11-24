local AC = exports['id_core']:getACUtils()
local playerLoadEvent = 'id_core:playerLoaded'
if Core.Settings.Framework.Name == 'ESX' then playerLoadEvent = 'esx:playerLoaded' end

RegisterNetEvent('id_stamina:trainStamina', function(reward, eventCode)
    local src = source

    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    local PLAYER = Core:GetPlayerFromSource(src)
    local table = 'id_stamina'
    if Core.Settings.Framework.Name == 'ESX' then
        table = 'users'
        PLAYER = ESX.GetPlayerFromId(src)
    end

    exports.oxmysql:query('SELECT stamina FROM '..table..' WHERE identifier = ?', {PLAYER.identifier}, function(data)
        if data[1] then
            local stamina = tonumber(data[1].stamina) + reward
            if stamina <= Config.Stamina.max then
                exports.oxmysql:update('UPDATE '..table..' SET stamina = ? WHERE identifier = ?', {stamina, PLAYER.identifier}, function()
                    updateStamina(src)
                end)
            else
                TriggerClientEvent('id_notify:notify', src, {
                    title = _U('label'),
                    message = _U('max_stamina'),
                    type = 'error'
                })
            end
        end
    end)
end)

AddEventHandler(playerLoadEvent, function(src)
    updateStamina(src)
end)

RegisterNetEvent('id_stamina:syncTraining', function(key, val)
    TriggerClientEvent('id_stamina:syncTraining', -1, key, val)
end)