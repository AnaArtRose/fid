function onCreate()
--background stuff
	makeAnimatedLuaSprite('bg','BGNormal',-600,-300);
	addAnimationByPrefix('bg', 'normal', 'WallNormal', 24, true);
	objectPlayAnimation('bg', 'normal',false);
	setLuaSpriteScrollFactor('bg',0.9,0.9);
	close(true);

	makeLuaSprite('floor','floor',-600,-300);
	setLuaSpriteScrollFactor('floor',1.0,0.9);
	close(true);

	makeAnimatedLuaSprite('fadeIn','vignetteIn',-600,-300);
	addAnimationByPrefix('fadeIn', 'normal', 'VignetteIn', 24, true);
	objectPlayAnimation('fadeIn', 'normal',false);
	setLuaSpriteScrollFactor('fadeIn',0.9,0.9);

	makeAnimatedLuaSprite('fadeOut','vignetteOut',-600,-300);
	addAnimationByPrefix('fadeOut', 'normal', 'VignetteOut', 24, true);
	objectPlayAnimation('fadeOut', 'normal',false);
	setLuaSpriteScrollFactor('fadeOut',0.9,0.9);

	addLuaSprite('bg',false);
	addLuaSprite('floor',false);

	close(true);
end
function onBeatHit()---for every beat


end
function onStepHit()---for every step


end
function onUpdate()


end
