Citizen.CreateThread(function()
    while true do

        local PlayerPedId = PlayerPedId()
        local coord = GetEntityCoords(PlayerPedId)

        for zoneName, zone in pairs(QBZones.Zones) do

            -- Check if player is in a zone
            if zone.polyzone:isPointInside(coord) then

                -- Iterate thought zone properties
                for propertyName, property in pairs(zone.properties) do

                    local gameTimer = GetGameTimer()

                    -- Check if zone property has not been executed since it's configured delay
                    if not property.lastExecuted or gameTimer - property.lastExecuted > property.delay then
                        property.execute(PlayerPedId) -- Run property function
                        property.lastExecuted = gameTimer -- Update last executed property
                    end
                end
            end
        end
        Citizen.Wait(1000)
    end
end)
