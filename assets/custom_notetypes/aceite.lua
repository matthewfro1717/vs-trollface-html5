function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'aceite' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'aceite');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'trollge_splashes');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.060');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.010');
		end
	end
end