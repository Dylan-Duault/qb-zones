QBZones = {}

QBZones.Properties = {
    ['RelieveStress'] = {
        name = "RelieveStress",
        delay = 2 * 60 * 1000, -- 2 minutes
        execute = function(source)
            TriggerServerEvent('hud:server:RelieveStress', math.random(5,15))
        end
    },
    ['GainStress'] = {
        delay = 2 * 60 * 1000, -- 2 minutes
        execute = function(source)
            TriggerServerEvent('hud:server:GainStress', math.random(5,15))
        end
    }
}

QBZones.PolyZones = {
    ['Unicorn'] = PolyZone:Create(
        {
            vector2(141.9965057373, -1290.5257568359),
            vector2(134.02610778809, -1276.3179931641),
            vector2(100.34678649902, -1282.1842041016), 
            vector2(85.306129455566, -1290.02734375),
            vector2(100.91226959229, -1317.6571044922)
        },
        {
            name = "unicorn"
        }
    )
}

QBZones.Zones = {
    ['Unicorn'] = {
        polyzone = QBZones.PolyZones.Unicorn,
        properties = {
            QBZones.Properties.RelieveStress,            
        }
    }
}