if getgenv().RedVexUILoaded then
    warn("[RedVexUI] Already loaded!")
    return
end

getgenv().RedVexUILoaded = true

local UIS = game:GetService("UserInputService")

local isTouch = UIS.TouchEnabled
local isKeyboard = UIS.KeyboardEnabled

local isMobile = isTouch
local isPC = isKeyboard and not isTouch

local MOBILE_URL = "https://raw.githubusercontent.com/USERNAME/RedVexUI/main/mobile.lua"
local PC_URL = "https://raw.githubusercontent.com/USERNAME/RedVexUI/main/pc.lua"

local chosenURL
local deviceType

if isMobile then
    deviceType = "Mobile"
    chosenURL = MOBILE_URL
elseif isPC then
    deviceType = "PC"
    chosenURL = PC_URL
else
    deviceType = "Unknown (Default: PC)"
    chosenURL = PC_URL
end

print("[RedVexUI] Device:", deviceType)
print("[RedVexUI] Loading...")

local success, result = pcall(function()
    return loadstring(game:HttpGet(chosenURL))()
end)

if not success then
    warn("[RedVexUI] Failed:", result)
    return
end

print("[RedVexUI] Loaded!")

return result
