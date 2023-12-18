function onSongStart()
	setProperty('defaultCamZoom', 0.8)
end

function onStepHit()
	if curStep == 96 or curStep == 192 or curStep == 288 or curStep == 384 or curStep == 480 or curStep == 576 or curStep == 640 or curStep == 704 or curStep == 768 then
		setProperty('defaultCamZoom', 0.8)
	end

	if curStep == 48 or curStep == 144 or curStep == 240 or curStep == 336 or curStep == 432 or curStep == 528 or curStep == 608 or curStep == 672 or curStep == 720 or curStep == 816 then
		setProperty('defaultCamZoom', 1.2)
	end

	if curStep == 913 then
		setProperty('defaultCamZoom', 7)
	end

	if curStep == 923 then
		setProperty('defaultCamZoom', 0.8)
	end
end