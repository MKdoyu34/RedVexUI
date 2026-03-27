local UI = {}
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

if not UIS.TouchEnabled then return end

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local Open = Instance.new("TextButton", ScreenGui)
Open.Size = UDim2.new(0,120,0,40)
Open.Position = UDim2.new(0,10,0.5,0)
Open.Text = "RedVexUI"
Open.BackgroundColor3 = Color3.fromRGB(25,25,25)
Open.TextColor3 = Color3.new(1,1,1)

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,420,0,260)
Main.Position = UDim2.new(0.5,-210,0.5,-130)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Main.Visible = false

Open.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

function UI:CreateWindow()
    local Tabs = {}

    function Tabs:CreateTab(name)
        local Tab = {}

        function Tab:Toggle(data)
            print("[Mobile Toggle]:", data.Name)
        end

        return Tab
    end

    return Tabs
end

return UI
