function onEvent(n,v1,v2)
	if n == 'Camera Flash' then
		makeLuaSprite('flash', '', 0, 0);
		makeGraphic('flash', 1280, 720, v1)
		addLuaSprite('flash', true);
		setLuaSpriteScrollFactor('flash', 0, 0)
		setProperty('flash.scale.x', 2)
		setProperty('flash.scale.y', 2)
		setProperty('flash.alpha', 0)
		setProperty('flash.alpha', 1)
		doTweenAlpha('flTw', 'flash', 0, v2, 'linear')
	end
end