local color = {r = 0, g = 150, b = 255, alpha = 255} -- Color of the text 

local font = 4 -- Font of the text

local time = 5000 -- Duration of the display of the text : 1000ms = 1sec

local nbrDisplaying = 0

local background = {

    enable = false,

    color = { r = 255, g = 255, b = 255, alpha = 255 },

}

local chatMessage = true

local dropShadow = false



-- Don't touch

local nbrDisplaying = 1



RegisterCommand('do', function(source, args)

    local text = ''

    for i = 1,#args do

        text = text .. ' ' .. args[i]

    end

    TriggerServerEvent('3ddo:shareDisplay', text)

end)



RegisterNetEvent('3ddo:triggerDisplay')

AddEventHandler('3ddo:triggerDisplay', function(text, source)

    local offset = 1 + (nbrDisplaying*0.14)

    Display(GetPlayerFromServerId(source), text, offset)

end)



function Display(mePlayer, text, offset)

    local displaying = true

    Citizen.CreateThread(function()

        Wait(time)

        displaying = false

    end)

    

	-- Chat message

    if chatMessage then

        local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)

        local coords = GetEntityCoords(PlayerPedId(), false)

        local dist = Vdist2(coordsMe, coords)

        if dist < 2500 then

            TriggerEvent('chat:addMessage', {

                color = { color.r, color.g, color.b },

                multiline = true,

                args = { text}

            })

        end

    end

    

	Citizen.CreateThread(function()

        nbrDisplaying = nbrDisplaying + 1

        while displaying do

            Wait(0)

            local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)

            DrawText3D(coords['x'], coords['y'], coords['z']+offset, text)

        end

        nbrDisplaying = nbrDisplaying - 1

    end)

end



function DrawText3D(x,y,z, text)

    local onScreen,_x,_y = World3dToScreen2d(x,y,z)

    local px,py,pz = table.unpack(GetGameplayCamCoord())

    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

 

    local scale = (1/dist)*2

    local fov = (1/GetGameplayCamFov())*100

    local scale = scale*fov



    if onScreen then

        SetTextScale(0.0*scale, 0.55*scale)

        SetTextFont(font)

        SetTextProportional(1)

        SetTextColour(color.r, color.g, color.b, color.alpha)

        SetTextDropshadow(0, 0, 0, 0, 255)

        SetTextEdge(2, 0, 0, 0, 150)

        SetTextDropShadow()

        SetTextOutline()

        SetTextEntry("STRING")

        SetTextCentre(true)

        AddTextComponentString(text)

        EndTextCommandDisplayText(_x, _y)

    end

end