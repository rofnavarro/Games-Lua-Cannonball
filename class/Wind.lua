Wind = Class{}

WIND_LEFT = love.graphics.newImage('img/arrow_left.png')
WIND_RIGHT = love.graphics.newImage('img/arrow_right.png')

function	Wind:init()
	self.x = VIRTUAL_WIDTH / 2 - (WIND_LEFT:getWidth() / 2 * 0.6)
	self.y = 10
	self.width = WIND_LEFT:getWidth()
	self.height = WIND_LEFT:getHeight()
	self.power = math.random(0, 9)
	self.direction = math.random(1, 2)
end

function	Wind:update(dt)
	self.power = math.random(0, 9)
	self.direction = math.random(1, 2)
end

function	Wind:render()
	if (self.direction == 1) then
		love.graphics.draw(WIND_LEFT, self.x - 2, self.y, 0, 0.6, 0.6)
	else
		love.graphics.draw(WIND_RIGHT, self.x, self.y, 0, 0.6, 0.6)
	end
	love.graphics.setColor(0 / 255, 0 / 255, 0 / 255, 1)
	love.graphics.setFont(smallfont)
	love.graphics.print(tostring(self.power), VIRTUAL_WIDTH / 2 - 3, (self.y + self.height - 10))
end
