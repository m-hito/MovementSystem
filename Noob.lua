local Enemy = require(game.ServerStorage.Modules.Movement)
local Noob = {}
Noob.__index = Noob
setmetatable(Noob, Enemy)

function Noob.new(humanoid, targetPos)
	
	local self = Enemy.new(humanoid, targetPos, {
		radius = 100,
		speed = 10,
	})

	self.cooldown = 5 -- cooldown
	setmetatable(self, Noob)

	return self
end


function Noob:EquipTool()
	-- add ur methods here if u want
end

function Noob:ActivateTool()
	
end

--function Noob:PatrolPoint()
--	print(self)
	
--	--if self:ChasingNpc() ~= nil then
--	--	print("this has this property")
--	--end
--end

return Noob

