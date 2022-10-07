function onCreate()
	-- background shit
	makeLuaSprite('BL2','black',-900,650)
	scaleObject('BL2', 10, 10);

	makeLuaSprite('void', 'void', -600, -200);
	setLuaSpriteScrollFactor('void', 0.9, 0.9);
	
	makeLuaSprite('void', 'void', -550, -500);
	setLuaSpriteScrollFactor('void', 0.9, 0.9);
	scaleObject('void', 3.1, 3.1);

	addLuaSprite('void', false);
	addLuaSprite('void', false);
	addLuaSprite('BL2', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
