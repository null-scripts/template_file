RegisterCommand("testcommand", function ()
    TriggerClientEvent("null-template:client:clientprint", -1)
end)

RegisterNetEvent("null-template:server:serverprint", function ()
    print("Server Event")
end)