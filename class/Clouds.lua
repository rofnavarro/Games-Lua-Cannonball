Clouds = Class{}

CLOUD1 = love.graphics.newImage('img/cloud1.png')
CLOUD2 = love.graphics.newImage('img/cloud2.png')
CLOUD3 = love.graphics.newImage('img/cloud3.png')
CLOUD4 = love.graphics.newImage('img/cloud4.png')
CLOUD5 = love.graphics.newImage('img/cloud5.png')

function	Clouds:init()
	self.scroll = 0
	self.speed = 40
	self.remove = false
end

function	Clouds:update(dt)

end

function	Clouds:render()
	love.graphics.draw(CLOUD1, self.scroll + 20, 20)
	love.graphics.draw(CLOUD2,  self.scroll + 100, VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD3,  self.scroll + 20, VIRTUAL_HEIGHT / 2)
	love.graphics.draw(CLOUD4,  self.scroll + 100, VIRTUAL_HEIGHT - VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD5,  self.scroll + 20, VIRTUAL_HEIGHT - 20)

	love.graphics.draw(CLOUD3,  self.scroll + 200, 20)
	love.graphics.draw(CLOUD5,  self.scroll + 300, VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD1,  self.scroll + 220, VIRTUAL_HEIGHT / 2)
	love.graphics.draw(CLOUD2,  self.scroll + 300, VIRTUAL_HEIGHT - VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD4,  self.scroll + 220, VIRTUAL_HEIGHT - 20)

	love.graphics.draw(CLOUD4,  self.scroll + 420, 20)
	love.graphics.draw(CLOUD1,  self.scroll + 500, VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD2,  self.scroll + 420, VIRTUAL_HEIGHT / 2)
	love.graphics.draw(CLOUD5,  self.scroll + 500, VIRTUAL_HEIGHT - VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD3,  self.scroll + 620, VIRTUAL_HEIGHT - 20)

	love.graphics.draw(CLOUD5,  self.scroll + 620, 20)
	love.graphics.draw(CLOUD4,  self.scroll + 700, VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD3,  self.scroll + 620, VIRTUAL_HEIGHT / 2)
	love.graphics.draw(CLOUD2,  self.scroll + 700, VIRTUAL_HEIGHT - VIRTUAL_HEIGHT / 4)
	love.graphics.draw(CLOUD1,  self.scroll + 820, VIRTUAL_HEIGHT - 20)
end
