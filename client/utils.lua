Utils = Utils or {}

function Utils:PlayAnim(dict, name)
    local playerPed = PlayerPedId()

    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(10)
    end

    TaskPlayAnim(playerPed, dict, name, 2.0, 2.0, -1, 1, 0, false, false, false)
end