function onCreate()
--background
	makeAnimatedLuaSprite('bgall','BGEvilAll',-600,-300);
	addAnimationByPrefix('bgall', 'evil', 'WallEvilAll', 24, true);
	objectPlayAnimation('bgall', 'evil',false);
	setLuaSpriteScrollFactor('bgall',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('bgdark','BGEvilDark',-600,-300);
	addAnimationByPrefix('bgdark', 'evil', 'WallEvilDark', 24, true);
	objectPlayAnimation('bgdark', 'evil',false);
	setLuaSpriteScrollFactor('bgdark',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('bgBlue','BGEvilB',-600,-300);
	addAnimationByPrefix('bgBlue', 'evil', 'WallEvilB', 24, true);
	objectPlayAnimation('bgBlue', 'evil',false);
	setLuaSpriteScrollFactor('bgBlue',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('bgGreen','BGEvilG',-600,-300);
	addAnimationByPrefix('bgGreen', 'evil', 'WallEvilG', 24, true);
	objectPlayAnimation('bgGreen', 'evil',false);
	setLuaSpriteScrollFactor('bgGreen',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('bgYellow','BGEvilY',-600,-300);
	addAnimationByPrefix('bgYellow', 'evil', 'WallEvilY', 24, true);
	objectPlayAnimation('bgYellow', 'evil',false);
	setLuaSpriteScrollFactor('bgYellow',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('bgRed','BGEvilR',-600,-300);
	addAnimationByPrefix('bgRed', 'evil', 'WallEvilR', 24, true);
	objectPlayAnimation('bgRed', 'evil',false);
	setLuaSpriteScrollFactor('bgRed',0.9,0.9);
	close(true);

--floor
	makeLuaSprite('floor','floorevil',-600,-300);
	setLuaSpriteScrollFactor('floor',1.0,0.9);
	close(true);

	makeLuaSprite('floordark','floordark',-600,-300);
	setLuaSpriteScrollFactor('floordark',1.0,0.9);
	close(true);

--addsprites
	addLuaSprite('bgall',false);
	addLuaSprite('floor',false);
end

function onBeatHit()---for every beat


end
function onStepHit()---for every step


end
function onUpdate()


end