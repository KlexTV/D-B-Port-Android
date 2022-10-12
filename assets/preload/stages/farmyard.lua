function onCreate()
	-- background shit
	makeLuaSprite('farmyard', 'farmyard', -600, -300);
	setScrollFactor('farmyard', 0.9, 0.9);


	addLuaSprite('farmyard', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end