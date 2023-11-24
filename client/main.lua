serverEventCode = '3a3Hc5hvBHU$fqsS$m8XW=v4m#--6P2kCGpnPvrPKAnZkmC6CGSsXJmPZEmbTS37GQKLmz6Fm_V^LT3&#BdDvzdbj_vg*9VBUJ-G=afVLkKybB^-nWKe*H?!J!$4D--PW?tS^&529@uFsM_Z+aQ%=tr6aBav4pHz2vmKF&Y#JQ$PPM4sc7ku?QL=hg^T?_WkU?2-%#6Dh?5Y2__?SAgMX#3ktnR!8JaMXV76f2U-Ukz8@_k!u-X3xzBD!T6jD36_&&Agu@+gA$gsTL84!SVVdyEpQtWfKYkR_f&%@uUSPqnc2n5cuDB%MYhzzayVxbb*hxM&H8!!m_Q!wNVqS9Q9am*qg*&!B3Q=QmQQ5Chnw72A3+B@HeMEqA4+33a?Y4KXQ$-rk=Mtecgm^z9&C$uMw+*vmVD3P-jM7-2q$^nMBMcb+ab_Mvn?_m#X-6jnsfxn9%yDtC$T_TyR_t**2U4Dct+hxH#z_T5mR6a3_M*3$#S8Yvg*!Ph8g64w4pzFDk65P5Cu#HmTzLrKYw^97+4ykv4ZrKZ6%r^k677KU@*g^q7-M@HVTZbcv$+NdyRF5C7HR3pztY%-77ukQ$p?FEg%aQT*zbfR!qR5$9WEEGmFLmTb8^MdgPX7npf=kvTCTn=YMm4HNGNE3Vx2Dvz+gb_uhjxvwJs@@Ew8V2sb^BFc*+EVd8A5+5Kx7jJ5RNqQJmSCWvT^PkeF55rEqsus?*dyC=XMRQ&FdWmk_zK*FQHbmY7ex_SGT@7Qyv4$uXA+@BvRHt5tGNt6cmy&tYB^!Z526*=ZP=+m532PbcQZ79h5h^fVjEgjPHJHME?8J6$NpjbdqU!xf%2BS3e9tdBr29-kQy@U_km5%N6LAzwZ&Lt%j^bd75zS62Vg6MBbE^3k&bCUD?p%tS!nhG+5XpDAtbDBEF-^x49#NGau_&!J7qdKFjzS4^HbZ4APYr$+MgN?8NCVmEcb5FBj3cbj=aBRjkGaY=qz6Bb#vHSPbLXBk6knn?8w$J-a?Bc-X8zz$+LCkaJUWyxG+?DBL*8n2_aN6Z%XJ&TNNt!5rRwBW!gyux=$UNZTdH@GCqKy2zT^*zjQtrHPZ?EYheHPs5FkU+AbnBWMRg9sE=bXwFXwNd&=_Ncb$csZhd!vewUg%kUUfEBCRd#jVzkm9UhvLn@&^w=_M9SXnx-Z*XXkHkp!GLPg^4rDQqWv-3SZeu*3!dpmrk-SJ+4dh!HveEyw_9ZNsrpuF*5#aQfuaYp2aDxr?*&Q&^+WgUH@%pmY6&s_Yj%RGg!L^4^ewJxmp$ph-*p=Y6s8RrW6CsMy^zEeMnp$rU2Y-mCFGEpB&*L*9_4_=N&zma@GF?bqN$-X*KdyFfnsu!*_3^2^Nbe3&rswzedm5%kBdfKpjAgsxr$C^pDp4S?yt6+N-Z!*#^39bpktAx$_Zu!Xd5&wW=WumPw3VQ!WBLC_=526AfPeJunZUgzxbLEnf9B5g$rRAqbhCj_35Es!_5A%^XTNt8qp6sMZkkvX74=J-?4h#L*6JDU!wM*dJdNDWr$xR*+qP%wvw2tnVMEmhW^VcAWL$FZupfn!WjY2J5Kxhr^y#Zh$e$9b-bu8GEHjAR%LK*r^rh9CUxHf#MT83Pg6g@RjRbArMbdgAS3F!BQ3Jze4V%G=M9E+Kebf*s!VwHvAV^Tt*Fgr_&&s+8daTauE_cF*qzkc*ddkMn^UBmB@tb!PsjkNDV?-xgP7FwR#jYTYB2uCa!qk*%wg#GXcMV=jCr5hB$GzBH-xp?kh22S%V-?5N94t5Nq^JKkw+@Bktnx6=RgVd+svZ^K8uyj7BJvf*!EXKeHG29?Xjp+8rV5V9-fgXCF5$KfRSbefc9a2x5gCA2r@VCmSSHzkdbw&wJt4h!%X-s9MW9HHCExdh-?DGYjVzU-H$QS-RY9ptE6eRMzKa5xz*3x^V^%9bm@r3RMJ$nqA=D2352CH2YxP7T$J%2s8y-UG*5Ku&NLhX#WHHP!%7FzxnY4*=@9BBGM_S5h_F%Gwf$%rK#k**9mNu6KNzRBvSAa=rEbY@FBAB=9gj3uc9!-v'

--================
--==    Blip    ==
--================
Citizen.CreateThread(function()
    if Config.Blip.enable then
        local blip = AddBlipForCoord(Config.Blip.coords)
        SetBlipSprite (blip, Config.Blip.sprite)
		SetBlipDisplay(blip, Config.Blip.display)
		SetBlipScale  (blip, Config.Blip.scale)
		SetBlipColour (blip, Config.Blip.color)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('map_blip'))
		EndTextCommandSetBlipName(blip)
    end
end)

--====================
--==    Variabler   ==
--====================
playerStamina, playerStaminaVal = 0, 0
fitnessInUse = {}
inMarker = nil
training, trainingTime, trainingType = nil, 0, nil
reward, time = 0, 0

--===================
--==    Threads    ==
--===================
CreateThread(function()
    while true do
        local sleep = 1000
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for ttype,table in pairs(Config.Training.types) do
            for k,v in pairs(table.locations) do
                local dist = GetDistanceBetweenCoords(playerCoords, v.pos, false) 
                
                if dist <= Config.DrawDistance then
                    sleep = 1
                    DrawMarker(20, v.pos,
                    0.0, 0.0, 0.0, 0.0, 180.0, 0.0,
                    0.25, 0.25, 0.25,
                    table.markerColor[1],table.markerColor[2], table.markerColor[3], 200,
                    false, true, 2, false, nil, nil, false)

                    if dist <= 0.7 then
                        inMarker = k
                        trainingType = ttype
                        if not training then
                            if fitnessInUse[trainingType] ~= k then
                                exports['id_helpnotify']:showUI(_U('start_training', _(trainingType)))
                                if IsControlJustReleased(0, 51) then
                                    exports['id_helpnotify']:hideUI()
                                    TriggerServerEvent('id_stamina:syncTraining', trainingType, k)
                                    training = k
                                    startTraining()
                                    reward = table.reward
                                    time = table.time
                                    SetEntityCoordsNoOffset(playerPed, v.pos)
                                    SetEntityHeading(playerPed, v.heading)
                                    FreezeEntityPosition(playerPed, true)
                                    if table.anim.multiAnims then
                                        for _,anim in pairs(table.anim.anims) do
                                            Utils:PlayAnim(anim.dict, anim.name)
                                        end
                                    elseif table.anim.isScenario then
                                        ClearPedTasks(playerPed)
                                        TaskStartScenarioInPlace(playerPed, table.anim.name, 0, true)
                                    else
                                        Utils:PlayAnim(table.anim.dict, table.anim.name)
                                    end
                                end
                            end
                        else
                            DisableControlAction(0, 20, true)
                            exports['id_helpnotify']:showUI(_U('stop_training'))
                            if IsControlJustReleased(0, 51) then
                                exports['id_helpnotify']:hideUI()
                                training = nil
                                TriggerServerEvent('id_stamina:syncTraining', trainingType, nil)
                                ClearPedTasks(playerPed)
                                ClearPedSecondaryTask(playerPed)
                                ClearPedTasksImmediately(playerPed)
                                FreezeEntityPosition(playerPed, false)
                                trainingTime = 0
                                reward = 0
                                time = 0
                            end
                        end
                    elseif trainingType == ttype and inMarker == k then
                        exports['id_helpnotify']:hideUI()
                        inMarker = nil

                        if training then
                            training = nil
                            trainingTime = 0
                            reward = 0
                            time = 0
                            TriggerServerEvent('id_stamina:syncTraining', trainingType, nil)
                            ClearPedTasks(playerPed)
                            ClearPedSecondaryTask(playerPed)
                            ClearPedTasksImmediately(playerPed)
                            FreezeEntityPosition(playerPed, false)
                        end
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

function startTraining()
    if not training then return end

    CreateThread(function()
        while training do
            Wait(1000)

            trainingTime = trainingTime + 1

            if time > 0 and trainingTime >= time then
                trainingTime = 0
                exports['id_notify']:notify({
                    title = _U('label'),
                    message = _U('stamina_trained', reward),
                    type = 'custom',
                    icon = 'fas fa-running'
                })
                TriggerServerEvent('id_stamina:trainStamina', reward, serverEventCode)
            end
        end
    end)
end

CreateThread(function()
    while true do
        Wait(Config.Stamina.restoreTime * 1000)
        
        if playerStaminaVal > 0 then
            RestorePlayerStamina(PlayerId(), playerStaminaVal)
        end
    end
end)