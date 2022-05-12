local QBCore = exports['qb-core']:GetCoreObject()
local timeOut = false

-- Callback

QBCore.Functions.CreateCallback('qb-jewellery:server:getCops', function(_, cb)
	local amount = 0
    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

-- Events

RegisterNetEvent('qb-jewellery:server:setVitrineState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
    TriggerClientEvent('qb-jewellery:client:setVitrineState', -1, stateType, state, k)
end)

RegisterNetEvent('qb-jewellery:server:vitrineReward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local otherchance = math.random(1, 4)
    local odd = math.random(1, 4)

    if otherchance == odd then
        local item = math.random(1, #Config.VitrineRewards)
        local amount = math.random(Config.VitrineRewards[item]["amount"]["min"], Config.VitrineRewards[item]["amount"]["max"])
        if Player.Functions.AddItem(Config.VitrineRewards[item]["item"], amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.VitrineRewards[item]["item"]], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
        end
    else
        local amount = math.random(2, 4)
        if Player.Functions.AddItem("10kgoldchain", amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["10kgoldchain"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
        end
    end
end)

RegisterNetEvent('qb-jewellery:server:setTimeout', function()
    if not timeOut then
        timeOut = true
        TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", true)
        Citizen.CreateThread(function()
            Citizen.Wait(Config.Timeout)

            for k, _ in pairs(Config.Locations) do
                Config.Locations[k]["isOpened"] = false
                TriggerClientEvent('qb-jewellery:client:setVitrineState', -1, 'isOpened', false, k)
                TriggerClientEvent('qb-jewellery:client:setAlertState', -1, false)
                TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", false)
            end
            timeOut = false
        end)
    end
end)