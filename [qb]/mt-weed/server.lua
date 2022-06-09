local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('mt-weed:server:ProcessarWeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local coke_leaf = Player.Functions.GetItemByName('cannabis')
    local coke_empty_bags = Player.Functions.GetItemByName('empty_weed_bag')
    if coke_leaf ~= nil and coke_empty_bags ~= nil and coke_empty_bags.amount >= 3 and coke_leaf.amount >= 3 then

        Player.Functions.RemoveItem('cannabis', 3)
        Player.Functions.RemoveItem('empty_weed_bag', 3)
        Player.Functions.AddItem('weed_bag', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weed_bag'], "add")
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
end)

RegisterNetEvent('mt-weed:server:ProcessarJoint', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName('rolling_paper')
    local weed_bag = Player.Functions.GetItemByName('weed_bag')
    if rolling_paper ~= nil and weed_bag ~= nil and weed_bag.amount >= 3 and rolling_paper.amount >= 3 then

        Player.Functions.RemoveItem('rolling_paper', 3)
        Player.Functions.RemoveItem('weed_bag', 3)
        Player.Functions.AddItem('joint', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['joint'], "add")
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
end)

RegisterNetEvent('mt-weed:server:plantWeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem('cannabis', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cannabis'], "add")
end)
