function onCreate()
	precacheImage('BGwoah')
end

function onSongStart()
	setProperty('defaultCamZoom', 0.8)
end

function onStepHit()
	if curStep == 1152 or curStep == 1344 or curStep == 1472 then
		setProperty('defaultCamZoom', 0.7)
	end

	if curStep == 256 or curStep == 384 or curStep == 512 or curStep == 640 or curStep == 768 or curStep == 1024 then
		setProperty('defaultCamZoom', 0.8)
	end

	if curStep == 128 or curStep == 288 or curStep == 448 or curStep == 576 or curStep == 704 or curStep == 896 or curStep == 1088 or curStep == 1280 or curStep == 1408 then
		setProperty('defaultCamZoom', 1.2)
	end

	if curStep == 1152 then
		makeLuaSprite('trallingwoah', 'BGwoah', -600, -200)
		setScrollFactor('trallingwoah', 0.9, 0.9)
		addLuaSprite('trallingwoah', false)
	end
end