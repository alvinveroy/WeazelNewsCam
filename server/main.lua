ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("cam", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 'cameraman' then
        TriggerClientEvent("Cam:ToggleCam", src)
    end 
end)

RegisterCommand("bmic", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 'crew' then
        TriggerClientEvent("Mic:ToggleBMic", src)
    end
end)

RegisterCommand("mic", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 'reporter' then
        TriggerClientEvent("Mic:ToggleMic", src)
    end
end)
