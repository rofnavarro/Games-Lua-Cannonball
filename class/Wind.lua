Wind = Class{}

WIND = love.graphics.newImage('img/wind_arrow.png')

function	Wind:init()
	self.x = VIRTUAL_WIDTH / 2 - (WIND:getWidth() / 2 * 0.6)
	self.y = 10
	self.dx = math.random(2) == 1 and -1 or 1
	self.dy = math.random(-0.5, 0.5)
	self.width = WIND:getWidth()
	self.height = WIND:getHeight()
	self.power = 20
	self.angle = 0 - math.pi
end

function	Wind:update(dt, direction)
	love.graphics.draw(WIND, self.x, self.y, math.pi, 0.6, 0.6)
end

function	Wind:render()
	love.graphics.draw(WIND, self.x, self.y, self.angle, 0.6, 0.6)
	love.graphics.setColor(0 / 255, 0 / 255, 0 / 255, 1)
	love.graphics.setFont(smallfont)
	love.graphics.print(tostring(self.power), VIRTUAL_WIDTH / 2 - 4, (self.y + self.height))
end
