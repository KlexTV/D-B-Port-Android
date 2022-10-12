function onCreate()
	-- background shit
	makeLuaSprite('daves_backyard', 'daves_backyard', -600, -300);
	setScrollFactor('daves_backyard', 0.9, 0.9);


	addLuaSprite('daves_backyard', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end