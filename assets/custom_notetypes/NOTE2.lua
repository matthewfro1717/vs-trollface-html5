function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'NOTE_assets2' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', '2troll');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475');
		end
	end
end