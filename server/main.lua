local trackedVehicles = {}

QBCore.Functions.CreateCallback('d-vehicletracker:server:doesVehicleHaveTracker', function(source, cb, netId)
	return cb(IsVehicleTracked(netId))
end)

function AddVehicle(netId, citizenid)
    table.insert(trackedVehicles, {
        netId = netId,
        tracker = citizenid,
    })
end

function RemoveVehicle(netId)
    for i = 1, #trackedVehicles do
        if trackedVehicles[i].netId == netId then
            table.remove(trackedVehicles, i)
            return true
        end
    end
    return false
end

function IsVehicleTracked(netId)
    for i = 1, #trackedVehicles do
        if trackedVehicles[i].netId == netId then
            return true
        end
    end
    return false
end