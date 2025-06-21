RegisterCommand("printclient", function ()
    TriggerClientEvent("null-template:client:clientprint", -1, 15)
end)

RegisterNetEvent("null-template:server:serverprint", function (num)
    print("Server Event = " .. num)
end)