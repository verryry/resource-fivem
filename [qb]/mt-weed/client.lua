local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPlants = 0
local weedPlants = {}


RegisterNetEvent('mt-weed:client:CannabisProcesso', function()
    local playerPed = PlayerPedId()
    QBCore.Functions.Progressbar("WeedProcess1", "STARTING PROCESS...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function()
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-weed:server:ProcessarWeed")
        ClearPedTasks(playerPed)
    end)
end)

RegisterNetEvent('mt-weed:client:JointProcesso', function()
    local playerPed = PlayerPedId()
    QBCore.Functions.Progressbar("JointProcess1", "STARTING PROCESS...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function()
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-weed:server:ProcessarJoint")
        ClearPedTasks(playerPed)
    end)
end)

-- Menu Weed Process
RegisterNetEvent('mt-weed:client:MenuProcessarCannabis', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Processing Table",
            txt = ""
        },
        {
            id = 2,
            header = "Process Cannabis",
            txt = "Needed: <br> 3 - Empty Bags <br> 3 - Cannabis",
            params = {
                event = "mt-weed:client:CannabisProcesso",
            }
        },
        {
            id = 6,
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },

    })
end)

RegisterNetEvent('mt-weed:client:MenuProcessarJoint', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Processing Table",
            txt = ""
        },
        {
            id = 2,
            header = "Process Joint",
            txt = "Needed: <br> 3 - Rolling Paper <br> 3 - Weed Bags",
            params = {
                event = "mt-weed:client:JointProcesso",
            }
        },
        {
            id = 6,
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },

    })
end)

-- Show Menu with qb-target
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("ProcessoCannabis", vector3(1389.84, 3604.76, 38.94), 5.2, 2, {
        name = "ProcessoCannabis",
        heading = 20,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-weed:client:MenuProcessarCannabis",
                icon = "fas fa-leaf",
                label = "Process Cannabis",
            },
        },
        distance = 2.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("ProcessoJoint", vector3(1145.31, -1659.68, 36.61), 4.4, 2, {
        name = "ProcessoJoint",
        heading = 20,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-weed:client:MenuProcessarJoint",
                icon = "fas fa-leaf",
                label = "Process Joint",
            },
        },
        distance = 2.5
    })
end)

-- Weed Plant
RegisterNetEvent('mt-weed:client:plantWeed', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID
	for i=1, #weedPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(weedPlants[i]), false) < 1.2 then
			nearbyObject, nearbyID = weedPlants[i], i
		end
	end
	QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
		if HasItem then
			if nearbyObject and IsPedOnFoot(playerPed) then
				isPickingUp = true
				TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
                QBCore.Functions.Progressbar("HAVERSTCOKE", "HAVERTING PLANT..", 6500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
				ClearPedTasks(playerPed)
				Wait(1000)
				DeleteObject(nearbyObject) 
				table.remove(weedPlants, nearbyID)
				spawnedPlants = spawnedPlants - 1
				TriggerServerEvent('mt-weed:server:plantWeed')
            end)
			else
				QBCore.Functions.Notify('You are too far away..', 'error', 3500)
			end
		else
			QBCore.Functions.Notify('You dont have a trowel!', 'error', 3500)
		end
	end, "trowel")
end)

-- Spawned Plant
CreateThread(function()
	while true do
		Wait(10)
		local coords = GetEntityCoords(PlayerPedId())
		if GetDistanceBetweenCoords(coords, Config.WeedField, true) < 50 then
			SpawnweedPlants()
			Wait(500)
		else
			Wait(500)
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(weedPlants) do
			DeleteObject(v)
		end
	end
end)

-- Spawn Plantas
function SpawnObject(model, coords, cb)
	local model = (type(model) == 'number' and model or GetHashKey(model))
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(1)
	end
    local obj = CreateObject(model, coords.x, coords.y, coords.z, false, false, true)
    SetModelAsNoLongerNeeded(model)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    if cb then
        cb(obj)
    end
end


function SpawnweedPlants()
	while spawnedPlants < 15 do
		Wait(1)
		local plantCoords = GenerateWeedPlantsCoords()
		SpawnObject('prop_weed_01', plantCoords, function(obj)
			table.insert(weedPlants, obj)
			spawnedPlants = spawnedPlants + 1
		end)
	end
end 

-- validasi plant coord
function ValidatePlantsCoord(plantCoord)
	if spawnedPlants > 0 then
		local validate = true
		for k, v in pairs(weedPlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end
		if GetDistanceBetweenCoords(plantCoord, Config.WeedField, false) > 50 then
			validate = false
		end
		return validate
	else
		return true
	end
end

-- generate plant coords
function GenerateWeedPlantsCoords()
	while true do
		Wait(1)
		local weedCoordX, weedCoordY
		math.randomseed(GetGameTimer())
		local modX = math.random(-15, 15)
		Wait(100)
		math.randomseed(GetGameTimer())
		local modY = math.random(-15, 15)
		weedCoordX = Config.WeedField.x + modX
		weedCoordY = Config.WeedField.y + modY
		local coordZ = GetCoordZPlants(weedCoordX, weedCoordY)
		local coord = vector3(weedCoordX, weedCoordY, coordZ)
		if ValidatePlantsCoord(coord) then
			return coord
		end
	end
end

-- Verificar Altura das Coordenadas
function GetCoordZPlants(x, y)
	local groundCheckHeights = { 35, 36.0, 37.0, 38.0, 39.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.0 }
	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)
		if foundGround then
			return z
		end
	end
	return 53.85
end

-- target
exports['qb-target']:AddTargetModel(`prop_weed_01`, {
    options = {
        {
            event = "mt-weed:client:plantWeed",
            icon = "fas fa-seedling",
            label = "Havert Plant",
        },
    },
    distance = 2.0
})