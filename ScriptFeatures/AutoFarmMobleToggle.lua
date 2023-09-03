-- This Script Is For Moble Users To able To Toggle The Gui.
-- And Yes Its source Take The Code If You Want.

if game.PlaceId == 2788229376 and not game.CoreGui:FindFirstChild("MobleToggleButton") and game.CoreGui:FindFirstChild("AFV2") then
	local Gui = Instance.new("ScreenGui")
	local UIListLayout = Instance.new("UIListLayout")
	local Frame = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Toggle = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	
	--Properties:

	Gui.Name = "MobleToggleButton"
	Gui.Parent = game.CoreGui
	Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	UIListLayout.Parent = Gui
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	Frame.Parent = Gui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 0.490123451, 0)
	Frame.Size = UDim2.new(0, 95, 0, 16)

	UIListLayout_2.Parent = Frame
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	Toggle.Name = "Toggle"
	Toggle.Parent = Frame
	Toggle.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0, 0, 0.482716054, 0)
	Toggle.Size = UDim2.new(0, 87, 0, 27)
	Toggle.Font = Enum.Font.FredokaOne
	Toggle.Text = "Close"
	Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.TextSize = 14.000

	UICorner.Parent = Toggle
	
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer
	
	local TweenService = game:GetService("TweenService")
	
	local AFV2 = game:GetService("CoreGui"):FindFirstChild("AFV2")
	
	Toggle.MouseButton1Click:Connect(function()
		if AFV2 == nil then Player:Kick("Error: 203") return end
		if Toggle.Text == "Close" then
			Toggle.Text = "Open"
			AFV2:FindFirstChild("Main").Visible = false
		else
			Toggle.Text = "Close"
			AFV2:FindFirstChild("Main").Visible = true
		end
	end)
	
	Toggle.MouseEnter:Connect(function()
		Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	end)
	
	Toggle.MouseLeave:Connect(function()
		Toggle.TextColor3 = Color3.fromRGB(150, 150, 150)
	end)
end
