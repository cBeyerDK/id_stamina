RegisterNetEvent('id_stamina:syncTraining', function(key, val)
    fitnessInUse[key] = val
end)

RegisterNetEvent('id_stamina:updateStamina', function(data)
    playerStamina = data
    local val = 0
    for k,v in ipairs(Config.Stamina.restoreAmount) do
        if playerStamina >= v.points then
            val = v.val
        end
    end

    playerStaminaVal = val
end)