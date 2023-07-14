--[[
	The Cannonball

	Author: Rodrigo Ferrero

	There are two islands next to each other and one player
	in each island. The goal of the game is to use the cannonball
	on the island to hit the other player 3 times.

	This is a study of game development in lua programming
	language.
]]

--[[
	Requires
]]
require	'utils/dependencies'

--[[
	Game
]]
function	love.load()
	math.randomseed(os.time())

	love.graphics.setDefaultFilter('nearest', 'nearest')

	love.window.setTitle("cannonball")
	
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,
	{
		fullscreen = false,
		resizable = true,
		vsync = true
	})
	
	love.keyboard.keysPressed = {}

	player1 = Cannon(1)
	player2 = Cannon(2)
	
	clouds = Clouds()
	wind = Wind()
end

function	love.resize(w, h)
	push:resize(w, h)
end

function	love.keypressed(key)
    love.keyboard.keysPressed[key] = true 

	if key == 'escape' then
		love.event.quit()
	elseif key == 'p' then
		if PAUSE == false then
			PAUSE = true
		elseif PAUSE == true then
			PAUSE = false
		end
    end
end


function	love.keyboard.wasPressed(key)
    return love.keyboard.keysPressed[key]
end

function	love.update(dt)
	player1:update(dt, 1)
	player2:update(dt, 2)
	turn = turn + 1

	if turn == 3 then
		wind:update(dt)
		turn = 0
	end

	love.keyboard.keysPressed = {}
end


function	love.draw()
	push:start()

	love.graphics.clear(30 / 255, 139 / 255, 195 / 255, 1)
	love.graphics.draw(BACKGROUND, 0, 0, 0, 1.4, 1.4)

	clouds:render()
	
	player1:render(1)
	player2:render(2)

	wind:render()

	displayFPS()

	push:finish()
end

function	displayFPS()
	love.graphics.setColor(0 / 255, 0 / 255, 255 / 255, 255 / 255)
	love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 20, 10)
end
