Config = {}

--===================
--==    General    ==
--===================
--[[
    Distancen på hvor tæt på du skal være på en marker før den vises
    OBS: Skal være et decimal tal
    f.eks 25.0 - for 25
]]
Config.DrawDistance = 25.0

--================
--==    Blip    ==
--================
Config.Blip = {}

-- Angiv om der skal være en blip på mappet
Config.Blip.enable = true

-- Placering på blip
Config.Blip.coords = vector3(130.54, -838.04, 42.18)

--[[
    Blip ikon og farve
    Du kan finde alle ikoner og farver her:
        https://docs.fivem.net/docs/game-references/blips/
]]
Config.Blip.sprite = 311
Config.Blip.color = 66

--[[
    Den måde blip bliver vist på
        2 = Main map og minimap
        3 = Kun på main map
        5 = Kun på minimap
        8 = Main map og minimap (Kan ikke vælges på map)
]]
Config.Blip.display = 2

-- Størrelse på blip
Config.Blip.scale = 0.7

--==================
--==    Stamina   ==
--==================
Config.Stamina = {}

-- Det maksimale antal af stamina point man kan opnå
Config.Stamina.max = 100

-- Det antal point man mister dagligt
Config.Stamina.dailyLoss = 10

-- Det antal point man minimum skal have for at miste point dagligt
Config.Stamina.lossAmount = 25

--[[
    De forskellige stadier af stamina
    [points]: Minimum point for at være på stadiet
    [val]: Hvor meget stamina man regenerer på stadiet
]]
Config.Stamina.restoreAmount = {
    {points = 10, val = 0.1},
    {points = 25, val = 0.15},
    {points = 50, val = 0.2},
    {points = 75, val = 0.3},
    {points = 90, val = 0.35},
    {points = 100, val = 0.4},
}

-- Hvor langtid der skal gå før man regenerer stamina igen (I sekunder)
Config.Stamina.restoreTime = 5

--====================
--==    Training    ==
--====================
Config.Training = {}

--[[
    De forskellige trænings typer
    [time]: Hvor lang tid det skal tage at lave en trænings cyklus (I sekunder)
    [reward]: Hvor mange stamina point man får fra én cyklus
    [markerColor]: RGB farve til markeren
    [locations]: Lokationer på steder du kan lave træningen
    [anim]: De animationer træningen bruger
        [dict]: Dictonary på animationen
        [name]: Navn på animationen
            f.eks.
            anim = {
                dict = 'dict',
                name = 'name'
            }
        [multiAnims]: Hvis der bruges flere animationer skal denne være `true`
            f.eks.
            anim = {
                multiAnims = true,
                anims = {
                    {dict = 'dict1', name = 'name1'},
                    {dict = 'dict2', name = 'name2'}
                }
            }
        [isScenario]: Laves der et scenario og ikke en animation skal denne være `true`
            f.eks.
            anim = {
                isScenario = true,
                name = 'scenarioName'
            }
]]
Config.Training.types = {
    ['running'] = {
        time = 60,
        reward = 1,
        markerColor = {35, 179, 21},
        locations = {
            {pos = vector3(-1203.3, -1556.55, 4.62), heading = 307.23}
        },
        anim = {
            multiAnims = true,
            anims = {
                {dict = 'mini@tennis', name = 'run_fwd_0_loop'},
                {dict = 'amb@world_human_power_walker@female@idle_a', name = 'idle_a'}
            }
        }
    },
    ['pull-up'] = {
        time = 60,
        reward = 1,
        markerColor = {168, 27, 12},
        locations = {
            {pos = vector3(-1200.01, -1571.2, 4.61), heading = 213.15}
        },
        anim = {
            isScenario = true,
            name = 'PROP_HUMAN_MUSCLE_CHIN_UPS'
        }
    },
    ['push-up'] = {
        time = 60,
        reward = 1,
        markerColor = {54, 132, 173},
        locations = {
            {pos = vector3(-1201.79, -1567.39, 4.61), heading = 33.79}
        },
        anim = {
            dict = 'amb@world_human_push_ups@male@idle_a',
            name = 'idle_d'
        }
    },
    ['sit-up'] = {
        time = 60,
        reward = 1,
        markerColor = {23, 166, 116},
        locations = {
            {pos = vector3(-1200.27, -1566.15, 4.62), heading = 34.07}
        },
        anim = {
            dict = 'amb@world_human_sit_ups@male@idle_a',
            name = 'idle_a'
        }
    },
}