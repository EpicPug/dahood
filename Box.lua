if game:IsLoaded() == false then
	game.Loaded:Wait()
end

if game.PlaceId ~= 2788229376 then
	return
end

if game.CoreGui:FindFirstChild('core?') then
	return
end

repeat task.wait(1) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild('DataFolder')

pcall(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/AntiAfk.lua'))()
end)

pcall(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/Stuff/main/AntiSit.lua'))()
end)

pcall(function()
	setfpscap(getgenv().config["Fps"])
end)
