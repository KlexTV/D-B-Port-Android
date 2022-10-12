function onCreate()
	-- background shit
	makeLuaSprite('redsky', 'redsky', -600, -300);
	setScrollFactor('redsky', 0.9, 0.9);
	addGlitchEffect('redsky', 2.2);


	addLuaSprite('redsky', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end