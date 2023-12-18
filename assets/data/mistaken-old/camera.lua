function onCreatePost()
	setProperty('camFollow.x', 889.5)
	setProperty('camFollow.y', 387.5)
end

function onBeatHit()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', '502', '567.5')
	else
		triggerEvent('Camera Follow Pos', '889.5', '387.5')
	end
end