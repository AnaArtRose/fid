function onCreate()
--background
	makeAnimatedLuaSprite('bg','BGBonus',-600,-300);
	addAnimationByPrefix('bg', 'colorwave', 'WallBonus', 24, true);
	objectPlayAnimation('bg', 'colorwave',false);
	setLuaSpriteScrollFactor('bg',0.9,0.9);
	close(true);

	makeAnimatedLuaSprite('floor','FloorBonus',-600,-300);
	addAnimationByPrefix('floor', 'colorwave', 'FloorBonus', 24, true);
	objectPlayAnimation('floor', 'colorwave',false);
	setLuaSpriteScrollFactor('floor',0.9,0.9);
	close(true);
--extra

	makeAnimatedLuaSprite('catback','crowdback',-300,-280);
	addAnimationByPrefix('catback', 'catjitter', 'crowdback', 24, true);
	objectPlayAnimation('catback', 'catjitter',false);
	setLuaSpriteScrollFactor('catback',0.9,0.9);
	scaleObject('catback', 0.8, 0.8);
	close(true);

	makeAnimatedLuaSprite('catfront','crowdfront',-530,-760);
	addAnimationByPrefix('catfront', 'catjitter', 'crowdfront', 24, true);
	objectPlayAnimation('catfront', 'catjitter',false);
	setLuaSpriteScrollFactor('catfront',1.3,1.3);
	close(true);

	makeAnimatedLuaSprite('catmiddle','crowdmiddle',-530,-760);
	addAnimationByPrefix('catmiddle', 'catjitter', 'crowdmiddle', 24, true);
	objectPlayAnimation('catmiddle', 'catjitter',false);
	setLuaSpriteScrollFactor('catmiddle',1.2,1.2);
	close(true);

	makeAnimatedLuaSprite('sparkles','sparkles',-300,-300);
	addAnimationByPrefix('sparkles', 'jitter', 'sparkles', 24, true);
	objectPlayAnimation('sparkles', 'jitter',false);
	setLuaSpriteScrollFactor('sparkles',0.9,0.9);
	scaleObject('sparkles', 0.8, 0.8);
	close(true);

	makeAnimatedLuaSprite('banner','banners',-530,-180);
	addAnimationByPrefix('banner', 'jitter', 'banners', 24, true);
	objectPlayAnimation('banner', 'jitter',false);
	setLuaSpriteScrollFactor('banner',1.1,1.1);
	close(true);

--addsprites
	addLuaSprite('bg',false);
	addLuaSprite('floor',false);
	addLuaSprite('catback',false);
	addLuaSprite('sparkles',false);
	addLuaSprite('banner',false);
	addLuaSprite('catmiddle',true);
	addLuaSprite('catfront',true);


end

function onBeatHit()---for every beat


end
function onStepHit()---for every step


end
function onUpdate()


end
