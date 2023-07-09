StateMachine = Class{}

function	StateMachine:init(states)
	self.empty = {
		enter = function() end,
		exit = function() end,
		render = function() end,
		update = function() end
	}
	self.states = states or {}
	self.current = self.empty
end

function	StateMachine:change(stateName, param)
	assert(self.states[stateName])
	self.current.exit()
	self.current = self.states[stateName]
	self.current.enter(param)
end

function	StateMachine:render()
	self.current:render()
end

function	StateMachine:update(dt)
	if PAUSE == false then
		self.current.update(dt)
	end
end
