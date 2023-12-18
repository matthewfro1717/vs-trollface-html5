local healthDrop = 0;
local FUCKYOU = 0;
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Halo Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'aceite');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.90');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
	makeAnimatedLuaSprite('spaghetti', 'spaghetti_popup', 0, 0)
	addAnimationByIndices('spaghetti', 'popup', 'spaghetti', '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17', 24)
	addAnimationByIndices('spaghetti', 'stay', 'spaghetti', '16', 24)
	addAnimationByIndices('spaghetti', 'popdown', 'spaghetti', '18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', 24)
	screenCenter('spaghetti')
	setScrollFactor('spaghetti')
	setObjectCamera('spaghetti', 'camHUD')
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Halo Note' then
		makeAnimatedLuaSprite('spaghetti', 'spaghetti_popup', 0, 0)
		addAnimationByIndices('spaghetti', 'popup', 'spaghetti', '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17', 24)
		addAnimationByIndices('spaghetti', 'stay', 'spaghetti', '16', 24)
		addAnimationByIndices('spaghetti', 'popdown', 'spaghetti', '18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', 24)
		screenCenter('spaghetti')
		setScrollFactor('spaghetti')
		setObjectCamera('spaghetti', 'camHUD')
		addLuaSprite('spaghetti', true)
		objectPlayAnimation('spaghetti', 'popup')
		runTimer('popup', 0.7)
		playSound('badnoise3', getRandomInt(0.7, 1))
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'popup' then
		objectPlayAnimation('spaghetti', 'stay')
		runTimer('rip', 1.2)
		healthDrop = healthDrop + 0.03;
		if healthDrop == 0.03 then
			runTimer('stay', 0.01, 30);
		else 
			FUCKYOU = 0;
		end
	end

	if tag == 'rip' then
		objectPlayAnimation('spaghetti', 'popdown')
		runTimer('megarip', 0.4);
	end

	if tag == 'megarip' then
		removeLuaSprite('spaghetti')
	end
	
	if tag == 'stay' then
		FUCKYOU = FUCKYOU + 1;
		if FUCKYOU == 30 then
			healthDrop = 0;
		end
	end
end