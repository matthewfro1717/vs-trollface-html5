function onCreate()
	-- background shit
	makeAnimatedLuaSprite('stageback', 'Phase1/rain', -600, -300);
	addAnimationByPrefix('stageback', 'rain', 'Oh Damn... The Outside is Depressed... :( instance ', 24, true)
    objectPlayAnimation('stageback', 'rain', true)
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'Phase1/BG', -600, -300);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end