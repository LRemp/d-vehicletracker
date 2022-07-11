

CreateThread(function()
    exports['JRP-target']:AddTargetBone(Config.targetBones, {
        options = {
            {
                event = "d-vehicletracker:client:startPlacingTracker",
                icon = "fas fa-truck-loading",
                label = "Place tracker",
                item = Config.trackerItem,
            },
        },
        distance = 1.5,
    })
end)

AddEventHandler('d-vehicletracker:client:startPlacingTracker', function(vehicle)
    if not DoesEntityExist(vehicle) then 
        return
    end

    local p = promise.new()

    QBCore.Functions.TriggerCallback('d-vehicletracker:server:doesVehicleHaveTracker', function(doesHave)
        p:resolve(doesHave)
    end)

    local isTracked = Await(p)
    if not isTracked then
        
    else
        return QBCore.Functions.Notify(Lang:t('error.alreadyTracked'), 'error')
    end
end)