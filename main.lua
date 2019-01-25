function love.load()
    x, y, w, h = 20, 20, 60, 20
	dx = 1
	dy = 1
	r, g, b = 0,0,0
	sound = love.audio.newSource("main.mp3", "stream")
	sound:setLooping(true)
	sound:play()
end

function love.update(dt)
	width, height, flags = love.window.getMode( )
	if x > width - 150 then dx = -1 end
	if x < 0 then dx = 1 end
	if y > height-25 then dy = -1 end
	if y < 0 then dy = 1 end
    y = y + (100*dy) * dt
    x = x + (100*dx) * dt
	r = love.math.random( )
	g = love.math.random( )
	b = love.math.random( )
end

function love.draw()
	love.graphics.setColor(r, g, b, 0.5)
    love.graphics.print("Metroidvania", x, y, 0, 2, 2)

end

function love.keypressed(k)
   if k == 'escape' then
      love.event.quit()
   end
end