if not game:IsLoaded() then
	game.Loaded:Wait()
end

local PlaceId = game.PlaceId
local TargetPlaceId = 2788229376

if PlaceId == TargetPlaceId then
	print('Correct PlaceId')
	print('Now loading!')
else
	print('Incorrect PlaceId. This script is intended for another game instance.')
	return
end

if game:GetService('CoreGui'):FindFirstChild('core?') then
	return
end

repeat wait(1) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild('DataFolder')

pcall(function() loadstring(game:HttpGet('https://github.com/EpicPug/Stuff/blob/main/AntiAfk.lua'))() end)
pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/AntiSit.lua'))() end)
pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/LowGfx.lua'))() end)

pcall(function()
	if tonumber(_G.config.FpsCap) then
		setfpscap(_G.config.FpsCap)
	end
end)

pcall(function()
	if workspace:FindFirstChild('Baseplate?') == nil then
		local i = Instance.new('Part')
		i.Parent = workspace
		i.Name = 'Baseplate?'
		i.Position = Vector3.new(0,-500,0)
		i.Size = Vector3.new(35,1,35)
		i.Anchored = true
	end
end)

_G.sideconfig = {
	Mask = {
		Name = "[Surgeon Mask] - $26",
		Price = 26,
		Tool = '[Mask]',
		Equip = 'In-gameMask'
	},
	
	Knife = {
		Name = '[Knife] - $155',
		Price = 155,
		Tool = '[Knife]'
	},
	
	Key = {
		Name = '[Key] - $129',
		Price = 129,
		Tool = '[Key]'
	},
	
	Pos = {
		4,
		-3.9
	}
}



-- coming soon
