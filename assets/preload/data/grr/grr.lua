
--Cam Bounce Shit----------------
local cameraBounce = false
local cameraBounceRate = 16
------------------------------------------

--Shake Screen Shit------------------------
local shakeAmount = .01;
local beatLength;
------------------------------------------


--Cam Follow Shit------------------------------
local xDad = 450;
local yDad = 400;
local xBF = 900;
local yBF = 469;
local xGF = 700;
local yGF = 500;

local offset = 25;

local xEX = 0;
local yEX = 0;
local offsetEX = 0;

local isCamFollow = true;
local isFocusingGF = false;
------------------------------------------

function onCreatePost()
	beatLength = 1/(curBpm/60) 
	--Create the Blood thing
	makeLuaSprite('RedGoBrrrrrr','RedGoBrrrrrr',-500, -200);
	setScrollFactor('RedGoBrrrrrr', 0, 0);
	scaleObject('RedGoBrrrrrr', 2, 2);
	doTweenColor('RedGoRed', 'RedGoBrrrrrr', 'F0002D', .01, 'linear')
	addLuaSprite('RedGoBrrrrrr', false);
	doTweenAlpha('Blood', 'RedGoBrrrrrr', 0, 0.01, 'smoothStepOut')


end

function onStepHit()

	if curStep%cameraBounceRate==0 and cameraBounce then
		FunniCamera(true)
	end


	if curStep == 6 then

	cameraShake("game", shakeAmount, 3*beatLength)
	WeNeedBlood(true)
	
	doTweenZoom("LookAtHer", "camGame", 1.15, 0.25, 'smoothStepOut')
	end

	if curStep == 12 then
	end

	if curStep == 16 then
	WeNeedBlood(false)
	doTweenZoom("LookAtHer", "camGame", .8, 0.25, 'smoothStepOut')
	end


	if curStep == 48 then
	doTweenZoom("LookAtHer", "camGame", .7, 1, 'smoothStepOut')
	cameraBounce = true
	FunniCamera(true)
	end

	if curStep == 160 then
	isFocusingGF = true
	end


	if curStep == 175 then
	doTweenZoom("LookAtHer", "camGame", 0.8, 0.25, 'smoothStepOut')
	cameraBounceRate = 4
	end
	
	if curStep == 184 then
	doTweenZoom("LookAtHer", "camGame", 0.9, 0.25, 'smoothStepOut')
	cameraBounceRate = 4
	end

	if curStep == 192 then
	doTweenZoom("LookAtHer", "camGame", 1.0, 0.25, 'smoothStepOut')
	cameraBounceRate = 4
	end

	if curStep == 200 then
	doTweenZoom("LookAtHer", "camGame", 0.7, .5, 'smoothStepOut')
	cameraBounceRate = 16
	cameraBounce = false
	isFocusingGF = false
	end

	if curStep == 202 then
	cameraShake("game", shakeAmount, beatLength)
	end

	if curStep == 208 then
	cameraBounce = true
	FunniCamera(true)
	end

	if curStep == 464 then
	isFocusingGF = true;
	end

	if curStep == 524 then

	doTweenColor('RedGoDark', 'RedGoBrrrrrr', '000000', .00001, 'linear')
	doTweenAlpha('LightOff', 'RedGoBrrrrrr', 0, 0.001, 'linear')
	doTweenAlpha('LightDFOff', 'RedGoBrrrrrr', 0.8, beatLength*2, 'linear')
	doTweenColor('HangryGotMad', 'dad', 'BA8CBA', beatLength*2, 'linear')
	doTweenColor('GFInBlood', 'gf', 'FF7B7B', beatLength*2, 'linear')
	--doTweenZoom("LetsGOOOO", "camGame", .8, beatLength*4, 'smoothStepOut')
	end

	if curStep == 528 then
	doTweenZoom("Moreeee", "camGame", .75, beatLength, 'smoothStepOut')
	end

	if curStep == 544 then
	doTweenZoom("Moreeee", "camGame", .85, beatLength, 'smoothStepOut')
	end

	if curStep == 560 then
	doTweenZoom("Moreeee", "camGame", 1, beatLength, 'smoothStepOut')
	end

	if curStep == 570 then
	doTweenZoom("LetsGOOOO", "camGame", 0.75, beatLength*2.5, 'smoothStepOut')
	end

	if curStep == 576 then
	doTweenAlpha('LightOn', 'RedGoBrrrrrr', 0, beatLength*2, 'linear')
	doTweenColor('HangryGotMad', 'dad', 'FFFFFF', beatLength*2, 'linear')
	doTweenColor('GFInBlood', 'gf', 'FFFFFF', beatLength*2, 'linear')
	end
	
	if curStep == 593 then
	isFocusingGF=false
	cameraBounceRate = 8
	FunniCamera(true)
	end


	if curStep == 593 then
	isFocusingGF=false
	end

	if curStep == 656 then
	isFocusingGF=true
	cameraBounceRate = 4
	FunniCamera(true)
	--
	doTweenZoom("Moreeee", "camGame", .75, beatLength, 'smoothStepOut')
	end

	if curStep == 672 then
	
	doTweenZoom("Moreeee", "camGame", .8, beatLength, 'smoothStepOut')
	end
	
	if curStep == 688 then
	
	doTweenZoom("Moreeee", "camGame", .85, beatLength, 'smoothStepOut')
	end

	if curStep == 703 then
	
	doTweenZoom("Moreeee", "camGame", .95, beatLength, 'smoothStepOut')
	end

	if curStep == 712 then
	
	doTweenZoom("Moreeee", "camGame", 1.05, beatLength, 'smoothStepOut')
	end

	if curStep == 720 then
	doTweenZoom("LetsGOOOO", "camGame", 0.7, beatLength*2.5, 'smoothStepOut')
	cameraBounceRate = 8
	FunniCamera(true)
	end

	if curStep == 832 then
	isFocusingGF = false
	end

	if curStep == 976 then
	doTweenAlpha('LightDFOff', 'RedGoBrrrrrr', 0.8, beatLength*2, 'linear')
	doTweenColor('BBF', 'boyfriend', '7B9AFF', beatLength*2, 'linear')
	doTweenColor('GFInBlood', 'gf', 'FF7B7B', beatLength*2, 'linear')
	doTweenZoom("Moreeee", "camGame", .75, beatLength, 'smoothStepOut')
	end

	if curStep == 992 then
	
	doTweenZoom("Moreeee", "camGame", .8, beatLength, 'smoothStepOut')
	end
	
	if curStep == 1008 then
	
	doTweenZoom("Moreeee", "camGame", .85, beatLength, 'smoothStepOut')
	end

	if curStep == 1024 then
	doTweenZoom("Moreeee", "camGame", .95, beatLength, 'smoothStepOut')
	end

	if curStep == 1036 then
	doTweenAlpha('LightOn', 'RedGoBrrrrrr', 0, beatLength*2, 'linear')
	doTweenZoom("LetsGOOOO", "camGame", 0.7, beatLength*2.5, 'smoothStepOut')
	doTweenColor('BBF', 'boyfriend', 'FFFFFF', beatLength*2, 'linear')
	doTweenColor('GFInBlood', 'gf', 'FFFFFF', beatLength*2, 'linear')
	cameraBounceRate = 16
	FunniCamera(true)
	end

	if curStep == 1104 then
	cameraBounceRate = 8
	FunniCamera(true)
	end

	if curStep == 1127 then
	isFocusingGF = true;
	end

	if curStep == 1170 then
	FunniCamera(false)
	cameraBounceRate = 9999999999999999;
                camHud.visible = false;
	doTweenAlpha('LightDFOff', 'RedGoBrrrrrr', 0.8, beatLength*2, 'linear')
	doTweenZoom("Moreeee", "camGame", .8, beatLength, 'smoothStepOut')
	end

	if curStep == 1196 then
	doTweenAlpha('LightOn', 'RedGoBrrrrrr', 0, beatLength*2, 'linear')
	doTweenZoom("LetsGOOOO", "camGame", 0.75, beatLength*2.5, 'smoothStepOut')
	end

	if curStep == 1200 then
	isFocusingGF = false
	doTweenAlpha('ShtCamManRunAway','camHUD',beatLength*2,'linear')
	end

	if curStep == 1216 then
	cameraShake("game", shakeAmount, 3*beatLength)
	end

end



function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the camera focus on boyfriend
	elseif focus == 'dad' then
		-- called when the camera focus on dad
	end
end

function onUpdate()
	if isCamFollow then
		CameraFollow()
	else
		triggerEvent('Camera Follow Pos','','')
	end
end




--Fraze's criminal accomplice
function WeNeedBlood(doit)
	if doit == true then
	doTweenAlpha('Blood', 'RedGoBrrrrrr', .6, 0.25, 'sineInOut')
	else
	doTweenAlpha('Blood', 'RedGoBrrrrrr', 0, 0.5, 'sineInOut')
	end
end

function FunniCamera(doit)
	if doit then
	doTweenZoom("BounceDaCam", "camHUD", 1.05, 0.0001, 'smoothStepOut')
	else
	doTweenZoom("DontBounceDaCam", "camHUD", 1, beatLength/2,'smoothStepOut')
	end
end

function onTweenCompleted(tag)

--Bounce Camera callbacks---------
	if tag == 'BounceDaCam' then
	FunniCamera(false)
	end
-----------------------------
	if tag == 'Moreeee' then
	doTweenZoom("LetsGOOOO", "camGame", 1.1, beatLength*32, 'linear')
	end

end

function CameraFollow()
	if isFocusingGF then
			HitThePole(xGF+xEX,yGF+yEX,offset+offsetEX)
	else
		if mustHitSection == false then
			HitThePole(xDad+xEX,yDad+yEX,offset+offsetEX)
		else
			HitThePole(xBF+xEX,yBF+yEX,offset+offsetEX)
		end

	end
end

function HitThePole(x,y,ofs)
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',x-ofs,y)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',x+ofs,y)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',x,y-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',x,y+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',x-ofs,y)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',x+ofs,y)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',x,y-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',x,y+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',x,y)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',x,y)
				end

			else

				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',x-ofs,y)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',x+ofs,y)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',x,y-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',x,y+ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',x,y)
				end
			end
end

--video--
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('GrrIntro');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end