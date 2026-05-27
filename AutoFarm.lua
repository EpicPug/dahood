--!strict

const Players = game:GetService("Players")

const player = Players.LocalPlayer :: Player

const MESSAGE = "This script is no longer available."

if not game:IsLoaded() then
	game.Loaded:Wait()
end

pcall(player.Kick, player, MESSAGE)
