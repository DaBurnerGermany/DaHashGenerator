ESX = nil


lastModel = ""
lastHashKey = ""

Citizen.CreateThread(function()
	while ESX == nil do
		ESX = exports["es_extended"]:getSharedObject()
		Citizen.Wait(1)
	end
end)


RegisterNetEvent("DaHashGenerator:getHashKey")
AddEventHandler("DaHashGenerator:getHashKey", function(value)

    lastHashKey = GetHashKey(value)

    print("Hash for " .. value .. " is '" .. lastHashKey .. "'")


    if lastHashKey ~= nil then
        doNotify("HashKey: " .. lastHashKey)
    else
        doNotify("HashKey: Param is empty!")
    end 
    
end)

RegisterNetEvent("DaHashGenerator:copyHashkey")
AddEventHandler("DaHashGenerator:copyHashkey", function()
    copy(lastHashKey)
end)



function copy(text)
    SendNUIMessage({
        payload = text
    })
    doNotify("Copied!")
end


function doNotify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end 