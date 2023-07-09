Cannon = Class{}

SHOOTER_IMG = love.graphics.newImage('img/cannon.png')
BASE_IMG = love.graphics.newImage('img/cannon_base.png')
GROUND_LEFT = love.graphics.newImage('img/tile_left.png')
GROUND_MID = love.graphics.newImage('img/tile_mid.png')
GROUND_RIGHT = love.graphics.newImage('img/tile_right.png')

function	Cannon:init(player)
	if player == 1 then
		self.x = math.random(30, (VIRTUAL_WIDTH / 2) - 150)
	elseif player == 2 then
		self.x = math.random((VIRTUAL_WIDTH / 2) + 150, VIRTUAL_WIDTH - 30)
	end
	self.y = math.random((VIRTUAL_HEIGHT - 50), ((VIRTUAL_HEIGHT / 2) + 10))
	self.width = SHOOTER_IMG:getWidth()
	self.height = SHOOTER_IMG:getHeight() + (BASE_IMG:getHeight() / 2)
	self.angle = 1
end

function	Cannon:update(dt, player)
	if player == 1 then
		if love.keyboard.isDown('w') then
			self.angle = self.angle - dt
		elseif love.keyboard.isDown('s') then
			self.angle = self.angle + dt
		end
	elseif player == 2 then
		if love.keyboard.isDown('up') then
			self.angle = self.angle - dt
		elseif love.keyboard.isDown('down') then
			self.angle = self.angle + dt
		end
	end
end

function	Cannon:render(player)
	if player == 1 then
		love.graphics.draw(SHOOTER_IMG, self.x, self.y, self.angle, 1, 1, SHOOTER_IMG:getWidth() / 2, SHOOTER_IMG:getHeight() / 2 + 3)
		love.graphics.draw(BASE_IMG, self.x - 15, self.y + (BASE_IMG:getHeight() / 2) - 35)
		love.graphics.draw(GROUND_LEFT, self.x - GROUND_LEFT:getWidth() + 8, self.y + GROUND_LEFT:getHeight() / 2 - 7, 0, 0.5, 0.5)
		love.graphics.draw(GROUND_MID, self.x - GROUND_MID:getWidth() / 4, self.y + GROUND_MID:getHeight() / 2 - 7, 0, 0.5, 0.5)
		love.graphics.draw(GROUND_RIGHT, self.x + GROUND_RIGHT:getWidth() - 24, self.y + GROUND_RIGHT:getHeight() / 2 - 7, 0, 0.5, 0.5)
	elseif player == 2 then
		love.graphics.draw(SHOOTER_IMG, self.x - 32, self.y + 4, -self.angle, 1, 1, SHOOTER_IMG:getWidth() / 2, SHOOTER_IMG:getHeight() / 2 + 3)
		love.graphics.draw(BASE_IMG, self.x - 47, self.y + (BASE_IMG:getHeight() / 2) - 31)
		love.graphics.draw(GROUND_LEFT, self.x - GROUND_LEFT:getWidth() - 24, self.y + GROUND_LEFT:getHeight() / 2 - 3, 0, 0.5, 0.5)	
		love.graphics.draw(GROUND_MID, self.x - GROUND_MID:getWidth() / 2 - 24, self.y + GROUND_MID:getHeight() / 2 - 3, 0, 0.5, 0.5)
		love.graphics.draw(GROUND_RIGHT, self.x - GROUND_RIGHT:getWidth() + 8, self.y + GROUND_RIGHT:getHeight() / 2 - 3, 0, 0.5, 0.5)
	end
end
