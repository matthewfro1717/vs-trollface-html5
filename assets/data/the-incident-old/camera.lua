function onCreatePost()
	setProperty('camFollow.x', 899.5)
	setProperty('camFollow.y', 327.5)
end

function onBeatHit()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', '635.5', '567.5')
	else
		triggerEvent('Camera Follow Pos', '899.5', '327.5')
	end
end