local Knit = require(game:GetService("ReplicatedStorage").Knit)

local SpeedBoostService = Knit.CreateService {
	Name = "SpeedBoostService",
	Client = {}
}

function SpeedBoostService:BoostPlayer(player, amount)
	local character = player.Character
	local humanoid = character and character:FindFirstChild("Humanoid")
	
	if humanoid then
		humanoid.WalkSpeed += amount
		return true
	end
	
		return false
	end
	
function SpeedBoostService:RevertPlayer(player, originalSpeed)
	local character = player.Character
	local humanoid = character and character:FindFirstChild("Humanoid")
	
	if humanoid then
		humanoid.WalkSpeed = originalSpeed
	end
end

return SpeedBoostService
