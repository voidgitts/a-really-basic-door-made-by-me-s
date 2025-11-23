local door = Instance.new("Part")
door.Parent = game.Workspace
door.Name = "Door"
door.Size = Vector3.new(8, 9, 1)
door.Position = Vector3.new(0, 4.5, 16.5)
door.Anchored = true
door.CanCollide = true
door.Transparency = 0
door.Color = Color3.new(0.713725, 0.713725, 0.713725)
local prox = Instance.new("ProximityPrompt")
prox.Parent = door
prox.ActionText = "Open"
prox.ObjectText = "Door"
prox.HoldDuration = 1
local sound = Instance.new("Sound")
sound.Parent = door
sound.SoundId = "rbxassetid://6431334087"
local oac = "Closed"

prox.Triggered:Connect(function()
	if oac == "Closed" then
		sound:Play()
		for i = 1, 60 do
			door.Position = door.Position + Vector3.new(0.1, 0, 0)
			task.wait(0.01)
		end
		oac = "Open"
	elseif oac == "Open" then
		sound:Play()
		for i = 1, 60 do
			door.Position = door.Position - Vector3.new(0.1, 0, 0)
			task.wait(0.01)
		end
		oac = "Closed"
	end
end)
