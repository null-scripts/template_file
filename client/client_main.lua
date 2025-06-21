RegisterCommand("testcommand", function ()
    TriggerServerEvent("null-template:server:serverprint")
end)

RegisterNetEvent("null-template:client:clientprint", function ()
    print("Client Event")
end)