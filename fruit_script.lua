local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GiveFruitEvent = ReplicatedStorage:WaitForChild("GiveFruitEvent")

-- UI Creation for Selecting Fruits
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Position = UDim2.new(0.5, -150, 0.5, -200)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

local fruits = {"Yeti", "Dragon", "Phoenix", "Ice", "Flame", "Magma"}

for i, fruit in pairs(fruits) do
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 280, 0, 40)
    Button.Position = UDim2.new(0, 10, 0, (i - 1) * 50 + 10)
    Button.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    Button.Text = "Get " .. fruit .. " Fruit"
    Button.Parent = Frame

    Button.MouseButton1Click:Connect(function()
        GiveFruitEvent:FireServer(fruit)
    end)
end
