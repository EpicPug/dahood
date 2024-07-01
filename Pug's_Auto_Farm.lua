if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Place_Id = game.PlaceId
local Target_PlaceId = 2788229376

if Place_Id ~= Target_PlaceId then
	return
end

if game.CoreGui:FindFirstChild('core?') then
	return
end

repeat task.wait(1) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild('DataFolder')

pcall(function()loadstring(game:HttpGet('https://github.com/EpicPug/Stuff/blob/main/AntiAfk.lua'))()end)
pcall(function()loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/AntiSit.lua'))()end)
pcall(function()loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/LowGfx.lua'))()end)
pcall(function() if getgenv().config.UseAntiCheat then loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/FunControl/main/AntiCheatBypass.lua'))() end end)

pcall(function()
	if tonumber(getgenv().config.FpsCap) then
		setfpscap(getgenv().config.FpsCap)
	end
end)

pcall(function()
	if workspace:FindFirstChild('Baseplate?') == nil then
		local Baseplate = Instance.new('Part')
		Baseplate.Parent = workspace
		Baseplate.Name = 'Baseplate?'
		Baseplate.Position = Vector3.new(0,-500,0)
		Baseplate.Size = Vector3.new(35,1,35)
		Baseplate.Anchored = true
	end
end)

getgenv().sideconfig = {
	Mask = {
		Name = "[Surgeon Mask] - $27",
		Price = 27,
		Tool = '[Mask]',
		Equip = 'In-gameMask'
	},

	Knife = {
		Name = '[Knife] - $159',
		Price = 159,
		Tool = '[Knife]'
	},

	Key = {
		Name = '[Key] - $133',
		Price = 133,
		Tool = '[Key]'
	},

	Pos = {
		4,
		-3.9
	}
}
