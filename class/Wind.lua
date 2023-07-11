Wind = Class{}

WIND = love.graphics.newImage('img/wind_arrow.png')

function	Wind:init()
	self.x = VIRTUAL_WIDTH / 2
	self.y = 40
	self.dx = math.random(2) == 1 and -1 or 1
	self.dy = math.random(-0.5, 0.5)
	self.width = WIND:getWidth()
	self.height = WIND:getHeight()
	self.power = 0
	self.angle = 1
end

function	Wind:update(dt, direction)
	
end
