function onCreate()
	makeLuaSprite('bg','wall',-600,-300)
	addLuaSprite('bg',false)
	setLuaSpriteScrollFactor('bg',0.9,0.9)
	close(true)

	makeLuaSprite('floor','floor',-600,-300)
	addLuaSprite('floor',false)
	setLuaSpriteScrollFactor('floor',1.0,0.9)
	close(true)
end
function onBeatHit()---for every beat


end
function onStepHit()---for every step


end
function onUpdate()


end
