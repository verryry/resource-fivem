RegisterNetEvent('bisik:allPlayer')
AddEventHandler('bisik:allPlayer', function(text, sourceId)
    local source = GetPlayerFromServerId(sourceId)
    local sourcePed = GetPlayerPed(source)
    local targetPed = PlayerPedId()

    local sourceCoords = GetEntityCoords(sourcePed)
    local targetCoords = GetEntityCoords(targetPed)
    local distance = #(targetCoords - sourceCoords)

    if distance < 25.0 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="background-color: rgba(255, 83, 19, 0.4); padding: 0.5vw; border-radius: 10px;">{0}</div>',
            args = {text}
          })
    end
end)

RegisterNetEvent('iklan:allPlayer')
AddEventHandler('iklan:allPlayer', function(text, sourceId)
    TriggerEvent('chat:addMessage', {
        template = '<div style="background-color: rgba(255, 202, 19, 0.4); padding: 0.5vw; border-radius: 10px;">{0}</div>',
        args = {text}
    })
end)