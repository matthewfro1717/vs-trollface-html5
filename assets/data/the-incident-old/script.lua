function onSongStart()
    setProperty('defaultCamZoom', 1.1)
end

function onStepHit()
    if curStep == 192 or curStep == 592 or curStep == 736 or curStep == 864 or curStep == 992 or curStep == 1120 or curStep == 1440 then
        setProperty('defaultCamZoom', 0.7)
    end

    if curStep == 416 or curStep == 672 or curStep == 800 or curStep == 928 or curStep == 1056 or curStep == 1376 then
        setProperty('defaultCamZoom', 1.1)
    end
end