local Translations = {
    error = {
        alreadyTracked = 'You find the tracker under the bumper...',
        
    },
    success = {
        
    },
    info = {
        
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) is dead",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})