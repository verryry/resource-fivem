local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('police', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local toSay = table.concat(args, ' ')
  
    if xPlayer.PlayerData.job.name == 'police' then 
      TriggerClientEvent('chat:addMessage', -1, {
          template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(50, 71, 202, 0.9); border-radius: 5px;"><i class="fas fa-bullhorn"></i><b> POLICE :</b> {0}</div>',
            args = {toSay}
        })
    else 
      TriggerClientEvent('chat:addMessage', source, {
        template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(205, 0, 0, 0.9); border-radius: 5px;"><i class="fas fa-exclamation"></i>  You need to work in police to use /police <i class="fas fa-exclamation"></i></div>',
        args = {}
      })
    end
  end, false)


  RegisterCommand('ems', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local toSay = table.concat(args, ' ')
  
    if xPlayer.PlayerData.job.name == 'ambulance' then 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(255, 0, 0, 1); border-radius: 5px;"><i class="fas fa-ambulance"></i> <b>AMBULANCE :</b> {0}</div>',
          args = {toSay}
      })
  else 
    TriggerClientEvent('chat:addMessage', source, {
      template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(205, 0, 0, 0.9); border-radius: 5px;"><i class="fas fa-exclamation"></i>  You need to work in ambulance to use /ems <i class="fas fa-exclamation"></i></div>',
      args = {}
    })
  end
  end, false)

  RegisterCommand('mech', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local toSay = table.concat(args, ' ')
  
    if xPlayer.PlayerData.job.name == 'mechanic' then 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(255, 140, 0, 1); border-radius: 5px;"><i class="fas fa-cog"></i> <b>MECHANIC :</b> {0}</div>',
          args = {toSay}
      })
  else 
    TriggerClientEvent('chat:addMessage', source, {
      template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(205, 0, 0, 0.9); border-radius: 5px;"><i class="fas fa-exclamation"></i>  You need to work in ambulance to use /ems <i class="fas fa-exclamation"></i></div>',
      args = {}
    })
  end
  end, false)

  RegisterCommand('taxi', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local toSay = table.concat(args, ' ')
  
    if xPlayer.PlayerData.job.name == 'taxi' then 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(255, 210, 0, 1); border-radius: 5px;"><i class="fas fa-taxi"></i> <b>TAXI :</b> {0}</div>',
          args = {toSay}
      })
  else 
    TriggerClientEvent('chat:addMessage', source, {
      template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(205, 0, 0, 0.9); border-radius: 5px;"><i class="fas fa-exclamation"></i>  You need to work in ambulance to use /ems <i class="fas fa-exclamation"></i></div>',
      args = {}
    })
  end
  end, false)

  RegisterCommand('rle', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local toSay = table.concat(args, ' ')
  
    if xPlayer.PlayerData.job.name == 'realestate' then 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(0, 100, 0, 1); border-radius: 5px;"><i class="fas fa-university"></i> <b>REAL ESTATE :</b> {0}</div>',
          args = {toSay}
      })
  else 
    TriggerClientEvent('chat:addMessage', source, {
      template = '<div style="padding: 0.60vw; margin: 0.05vw; background-color: rgba(205, 0, 0, 0.9); border-radius: 5px;"><i class="fas fa-exclamation"></i>  You need to work in ambulance to use /ems <i class="fas fa-exclamation"></i></div>',
      args = {}
    })
  end
  end, false)