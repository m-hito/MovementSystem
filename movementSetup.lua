local models = script.Parent.Parent

local Noob = require(game.ServerStorage.Modules.Movement.Noob)

-- Setup NPCs, here make models in ur workspace under a folder called "Live" inside "World" thats all u gotta do
local npcCharacter1 = script.Parent
local npcCharacter2 = workspace.World.Live.Noob2

local humanoid = npcCharacter1:WaitForChild("Humanoid")
local humanoid2 = npcCharacter2:WaitForChild("Humanoid")

local targetPos = Vector3.new(0, 0, 0)

local npcStored = {
	
}

for _, npc in pairs(models:GetChildren()) do
	if npc:FindFirstChild("Humanoid") then
		local npcHumanoid = npc:FindFirstChild("Humanoid")

		npcStored[npc.Name] = Noob.new(npcHumanoid, targetPos)

	end

end

local noob1 = Noob.new(humanoid, targetPos)
local noob2 = Noob.new(humanoid2, targetPos)
local enemies = {noob1, noob2}

--noob1:Move()
--noob2:Move()

for _, enemy in pairs(npcStored) do
	task.spawn(function()
		if enemy.humanoid.Health <= 0 then return end
		enemy:Move()
	end)
	
end

game:GetService("RunService").Heartbeat:Connect(function()
	local currentTime = tick()

	for _, enemy in pairs(npcStored) do
		if currentTime - enemy.lastTimeCheck >= enemy.checkInterval then
			enemy.lastTimeCheck = currentTime
			
			
			enemy:ChasingNPC()  -- Only every 0.5 sec, no blocking
			enemy:PatrolPoint()
		end
	end
	
end)

--task.wait(3)

--noob1:ReturnBack()
--noob2:ReturnBack()
