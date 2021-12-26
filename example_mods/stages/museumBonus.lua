function onCreate()
	makeLuaSprite('bg','wallbonus',-600,-300)
	addLuaSprite('bg',false)
	setLuaSpriteScrollFactor('bg',0.9,0.9)
	close(true)

	makeLuaSprite('floor','floorbonus',-600,-300)
	addLuaSprite('floor',false)
	setLuaSpriteScrollFactor('floor',1.0,0.9)
	close(true)

	makeAnimatedLuaSprite('background','background',-470,-250)
	addAnimationByPrefix('background', 'scribblecats', 'background', 24, true)
	addLuaSprite('background',false)
	objectPlayAnimation('background', 'scribblecats',false)
	setLuaSpriteScrollFactor('background',0.9,0.9)
	close(true)

	makeAnimatedLuaSprite('foreground','foreground',-525,-300)
	addAnimationByPrefix('foreground', 'scribblecats', 'foreground', 24, true)
	addLuaSprite('foreground',true)
	objectPlayAnimation('foreground', 'scribblecats',false)
	setLuaSpriteScrollFactor('foreground',1.1,1.1)
	scaleObject('foreground', 1.2, 1.2);
	close(true)
end
function onBeatHit()---for every beat


end
function onStepHit()---for every step


end
function onUpdate()


end
