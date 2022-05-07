
function concatenate(args)
    local str = ''
    for i=1, #args do
        str = str..' '..args[i]
    end
    return str
end

RegisterCommand('bisik', function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local text = 'Bisik | '..name..' :'.. concatenate(args)

    TriggerClientEvent('bisik:allPlayer', -1, text, source)
end, false)

RegisterCommand('iklan', function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local text = 'Iklan | '..name..' :'.. concatenate(args)

    TriggerClientEvent('iklan:allPlayer', -1, text, source)
end, false)