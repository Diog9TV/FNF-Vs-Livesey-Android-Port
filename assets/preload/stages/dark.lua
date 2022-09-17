function onCreate()
	
	makeAnimatedLuaSprite('dark', 'dark', 0, 0);
	AddAnimationByPrefix('dark', 'idle');
	addLuaSprite('dark', false)
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('dark', 2, 2)

--Your custom bb sprites or something like this

	close(true);

end