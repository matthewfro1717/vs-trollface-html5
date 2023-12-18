function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor', 'songPosition');
    currentBeat = (songPos / 1000) * (bpm / 60)
end

function onCreate()
    addCharacterToList('bf', 'bf')
end
function onSongStart()
    triggerEvent('Change Character', 'bf', 'bf')
    triggerEvent('Change Character', 'bf', 'bf')
end
function onStepHit()
    if curStep == 915 then
        triggerEvent('Change Character', 'bf', 'bf')
    end
end