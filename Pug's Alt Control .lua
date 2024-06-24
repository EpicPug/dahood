if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Place_Id = game.PlaceId
local Target_PlaceId = 2788229376

if Place_Id == Target_PlaceId then
	print('Correct PlaceId')
	print('Now loading!')
else
	print('Incorrect PlaceId. This script is intended for another game instance.')
	return
end

if game.CoreGui:FindFirstChild('alt core?') or game.CoreGui:FindFirstChild('host core?') then
	return
end

repeat wait(1) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild('DataFolder')
