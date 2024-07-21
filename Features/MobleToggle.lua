-- this script is for moble users to able to Toggle the gui.
-- and yes its source take the code if you want.

local PlaceId = 2788229376

if game.PlaceId ~= PlaceId then
	return
end

if game.CoreGui:FindFirstChild("MobleToggleButton") or not game.CoreGui:FindFirstChild("Auto Farm V1.2") then
	return
end

local MobleToggleButton = Instance.new("ScreenGui")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

MobleToggleButton.Name = "MobleToggleButton"
MobleToggleButton.Parent = game.CoreGui
MobleToggleButton.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UIListLayout.Parent = MobleToggleButton
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

Frame.Parent = MobleToggleButton
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.498765439, 0)
Frame.Size = UDim2.new(0, 101, 0, 6)

Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.546341479, 0, -20, 0)
Button.Size = UDim2.new(0, 93, 0, 31)
Button.Font = Enum.Font.FredokaOne
Button.Text = "Close"
Button.TextColor3 = Color3.fromRGB(116, 116, 116)
Button.TextSize = 15.000

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Button

UIListLayout_2.Parent = Frame
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

local Player = game:GetService("Players").LocalPlayer

local TweenService = game:GetService("TweenService")

local Gui = game:GetService("CoreGui"):FindFirstChild("Auto Farm V1.2")

Button.MouseButton1Click:Connect(function()
	if Gui == nil then Player:Kick("Error") return end
	if Button.Text == "Close" then
		Button.Text = "Open"
		Gui:FindFirstChild("Main").Visible = false
	else
		Button.Text = "Close"
		Gui:FindFirstChild("Main").Visible = true
	end
end)

Button.MouseEnter:Connect(function()
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

Button.MouseLeave:Connect(function()
	Button.TextColor3 = Color3.fromRGB(116, 116, 116)
end)
