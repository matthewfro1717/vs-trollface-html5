local normal = false
local weee = false
local bopping = false
local bopping2 = false
local defaultNotePos = {};
function onCreate()
end

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
    if weee == true then
        for i = 0, 7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + 32 * math.sin((currentBeat + i*7)))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
        doTweenAngle('camHUDAngle', 'camHUD', 10 * math.sin(currentBeat * 0.5), 1, 'linear')
        doTweenAngle('camGameAngle', 'camGame', 10 * math.sin(currentBeat * 0.5), 1, 'linear')
    end
end

function onBeatHit()
	if bopping == true then
        setProperty('camGame.zoom', 1)
	end
    if bopping2 == true then
        setProperty('camHUD.zoom', 1.2)
	end
end

function onStepHit()
    if curStep == 1 then
    end

	if curStep == 512 then
		weee = true
        bopping = true
    end

    if curStep == 1152 then
        bopping2 = true
        bopping = false
    end

    if curStep == 1472 then
        bopping2 = false
        doTweenAlpha('camHUDAlpha', 'camHUD', 0, 2, 'linear')
    end
end