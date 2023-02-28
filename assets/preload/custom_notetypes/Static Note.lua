function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteassetshit/StaticNOTE_assets');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	makeAnimatedLuaSprite('image', 'hitStatic', 0, 0);
	addAnimationByPrefix('image', 'staticANIMATION', 'staticANIMATION', 24, false)
	setObjectCamera('image', 'other')
	addLuaSprite('image', true);
	precacheSound('hitStatic1')
end

function onCountdownTick(swagCounter)
	if swagCounter == 3 then
	    removeLuaSprite('image', false);
	end
end

function noteMiss(bruh, noteData, noteType, fard)
	if noteType == 'Static Note' then
    	runTimer('wait', 0.4);
    	addLuaSprite('image', true);
		playAnim('image', 'staticANIMATION', true)
		playSound('hitStatic1')
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
	    removeLuaSprite('image', false);
    end
end