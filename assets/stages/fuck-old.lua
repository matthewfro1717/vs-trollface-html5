function onCreate()
	makeLuaSprite('bg', 'Phase3Old/dear god help', -600, -200)
	setScrollFactor('bg', 0.9, 0.9)
	addLuaSprite('bg', false)

	makeAnimatedLuaSprite('bottomBoppers', 'Phase3Old/Office maybe', -300, 140)
	addAnimationByPrefix('bottomBoppers', 'bop', 'Bottom Level Boppers', 24, false)
	setScrollFactor('bottomBoppers', 0.9, 0.9)
	setGraphicSize('bottomBoppers', getProperty('bottomBoppers.width') * 1)

	addLuaSprite('bottomBoppers', false)

end