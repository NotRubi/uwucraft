--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys) for the anti kick
]]

local Players = game:GetService("Players")
local OldNameCall = nil

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
        if getgenv().SendNotifications == true then
          print("Bypassed A ClientSide Kick")
        end
        
        return nil
    end
    
    return OldNameCall(Self, ...)
end)


loadstring(game:HttpGet("https://raw.githubusercontent.com/jmesfo0/RobloxScripts/main/psx-jmes.lua"))()
