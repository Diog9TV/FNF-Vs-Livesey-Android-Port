function onCreate()
	
	makeLuaSprite('1', 'benbow', 0, 0)
	makeLuaSprite('2', 'dark', 0, 0)

	scaleObject('1', 1.8, 1.8)
	scaleObject('2', 2, 2)
	
	addLuaSprite('1', false)
	addLuaSprite('2', false)
	
	setProperty('2.visible', false)

end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == '0' then

	setProperty('1.visible', true)
	setProperty('2.visible', false)
end
	if value1 == '1' then
	setProperty('1.visible', false)		
	setProperty('2.visible', true)
end
end
end	

