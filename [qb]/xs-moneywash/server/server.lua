local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('XSMoneyWash:StartWash', function(amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName(Config.MarkedBillsName) ~= nil  then
    local markedbills = Player.Functions.GetItemByName(Config.MarkedBillsName)
local posokostizitomarked =  markedbills.info.worth
    local price1 = posokostizitomarked  *  amount
    if  Player.Functions.RemoveItem(Config.MarkedBillsName, amount) then
        Player.Functions.AddMoney("cash", price1, "Money Wash")
        TriggerClientEvent('QBCore:Notify', src, Config.AllGoodNotify, 'error')
    else
        TriggerClientEvent('QBCore:Notify', src, Config.YouDontHaveNotify, 'error')
    end
end
end)
