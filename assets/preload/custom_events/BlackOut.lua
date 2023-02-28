function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
		makeLuaSprite('Flash', 'Black', -700, 0);
		scaleObject('Flash', 18, 22);
		addLuaSprite('Flash', true)
		setProperty('Flash.visible', true);
		elseif value1 == 'false' then
		setProperty('Flash.visible', false)
			end
		end
	end