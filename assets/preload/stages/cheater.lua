function onCreate()
	-- background shit
	makeLuaSprite('cheater', 'cheater', -600, -300);
	setScrollFactor('cheater', 0.9, 0.9);
	addGlitchEffect('cheater', 2.2);


	addLuaSprite('cheater', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end