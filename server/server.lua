ESX = nil


while ESX == nil do
	ESX = exports["es_extended"]:getSharedObject()
end


ESX.RegisterCommand("getHashKey", "admin", function(xPlayer, args, showError)
    
    xPlayer.triggerEvent("DaHashGenerator:getHashKey", args.model_name)
    
    --[[
    if args.model_name ~= nil and args.model_name ~= "" then 


        
    else 
        print("model_name is not net")
        xPlayer.triggerEvent("DaHashGenerator:getHashKey", nil)
    end

    --]]
    
    
    
end, false, {help = "getHaskKey", validate = true, arguments = {
        {name = 'model_name', help = "Model name", type = 'string'}
    }})


ESX.RegisterCommand("copyHashkey", "admin", function(xPlayer, args, showError)
    xPlayer.triggerEvent("DaHashGenerator:copyHashkey")
end, false, {help = "copyHashkey", validate = true, arguments = {
}})