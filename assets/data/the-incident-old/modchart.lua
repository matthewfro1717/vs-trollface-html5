local shet = false
local normal1 = false
local OHFUCK = false
local bopping = false
local bopping2 = false
local defaultNotePos = {};
function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
        table.insert(defaultNotePos, {x,y})
    end
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor', 'songPosition');
    currentBeat = (songPos / 1000) * (bpm / 60)
    noteTweenAngle("Note0A", 0, 64800, 180, 'linear')
    noteTweenAngle("Note1A", 1, 64800, 180, 'linear')
    noteTweenAngle("Note2A", 2, 64800, 180, 'linear')
    noteTweenAngle("Note3A", 3, 64800, 180, 'linear')
    noteTweenAngle("Note4A", 4, 64800, 180, 'linear')
    noteTweenAngle("Note5A", 5, 64800, 180, 'linear')
    noteTweenAngle("Note6A", 6, 64800, 180, 'linear')
    noteTweenAngle("Note7A", 7, 64800, 180, 'linear')
    if shet == true then
        for i = 0, 7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + 32 * math.sin((currentBeat + i*7)))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 32 * math.cos((currentBeat + i*0.25) * math.pi))
        end
    end
    
    if normal1 == true then
		for i = 0, 7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
    
    if OHFUCK == true then
        for i = 0, 7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + 32 * math.sin((currentBeat + i*7)))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 32 * math.cos((currentBeat + i*0.25) * math.pi))
        end
        doTweenAngle('camHUDAngle', 'camHUD', 20 * math.sin(currentBeat * 0.5), 1, 'linear')
        doTweenAngle('camGameAngle', 'camGame', -20 * math.sin(currentBeat * 0.5), 1, 'linear')
    end
end

function onBeatHit()
	if bopping == true then
        setProperty('camGame.zoom', 1)
    end
    
    if bopping2 == true then
        setProperty('camGame.zoom', 1)
    end
end

function onStepHit()
	if curStep == 416 then
		bopping = true
        shet = true
    end
    
    if curStep == 672 then
        OHFUCK = true
        shet = false
    end

    if curStep == 800 then
        OHFUCK = false
        normal1 = true
    end

    if curStep == 832 then
        OHFUCK = true
        normal1 = false
    end

    if curStep == 864 then
        OHFUCK = false
        normal1 = true
    end

    if curStep == 896 then
        OHFUCK = true
        normal1 = false
    end

    if curStep == 1568 then
        bopping2 = true
        bopping = false
		noteTweenAlpha("Note0", 0, 0, 0.6, 'linear')
		noteTweenAlpha("Note1", 1, 0, 0.6, 'linear')
		noteTweenAlpha("Note2", 2, 0, 0.6, 'linear')
		noteTweenAlpha("Note3", 3, 0, 0.6, 'linear')
		noteTweenAlpha("Note4", 4, 0, 0.6, 'linear')
		noteTweenAlpha("Note5", 5, 0, 0.6, 'linear')
		noteTweenAlpha("Note6", 6, 0, 0.6, 'linear')
		noteTweenAlpha("Note7", 7, 0, 0.6, 'linear')
    end
    
    if curStep == 1106 then
		noteTweenAlpha("Note4", 4, 1, 0.6, 'linear')
		noteTweenAlpha("Note5", 5, 1, 0.6, 'linear')
		noteTweenAlpha("Note6", 6, 1, 0.6, 'linear')
		noteTweenAlpha("Note7", 7, 1, 0.6, 'linear')
    end
    
    if curStep == 1376 then
		noteTweenAlpha("Note0", 0, 1, 0.6, 'linear')
		noteTweenAlpha("Note1", 1, 1, 0.6, 'linear')
		noteTweenAlpha("Note2", 2, 1, 0.6, 'linear')
		noteTweenAlpha("Note3", 3, 1, 0.6, 'linear')
        OHFUCK = true 
    end

    if curStep == 1696 then
        OHFUCK = false
        bopping2 = false
        normal1 = true
    end
end