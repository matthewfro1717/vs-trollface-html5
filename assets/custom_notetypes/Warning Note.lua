function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'warning_notes');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Warning Note' then
		badNoteHit()
	end
end

function badNoteHit()
	triggerEvent('Play Animation', 'hit', 'bf')
	soundRandom = getRandomInt(1, 3)
	if soundRandom == 1 then
		playSound('badnoise1', getRandomInt(0.7, 1))
	elseif soundRandom == 2 then
		playSound('badnoise2', getRandomInt(0.7, 1))
	elseif soundRandom == 3 then
		playSound('badnoise3', getRandomInt(0.7, 1))
	end
end