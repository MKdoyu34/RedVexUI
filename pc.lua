local UI = {}
local UIS = game:GetService("UserInputService")

if not UIS.KeyboardEnabled then return end

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,500,0,300)
Main.Position = UDim2.new(0.5,-250,0.5,-150)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Main.Visible = true

UIS.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.K then
        Main.Visible = not Main.Visible
    end
end)

function UI:CreateWindow()
    local Tabs = {}

    function Tabs:CreateTab(name)
        local Tab = {}

        function Tab:Toggle(data)
            print("[PC Toggle]:", data.Name)
        end

        return Tab
    end

    return Tabs
end

return UI
