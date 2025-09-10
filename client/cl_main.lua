RegisterCommand("printserver", function ()
    TriggerServerEvent("null-template:server:serverprint", 10)
end)

RegisterNetEvent("null-template:client:clientprint", function (num)
    print("Client Event Num = " .. num)
end)
