function onCreate()
	setProperty('skipArrowStartTween', true)
end

function onCreatePost()
	for i = 0, getProperty('strumLineNotes.length')-1 do
		setPropertyFromGroup('strumLineNotes', i, 'alpha', 0);
	end

	for i = 0, getProperty('grpNoteSplashes.length')-1 do
		setPropertyFromGroup('grpNoteSplashes', i, 'visible', false);
	end

	for i = 0, getProperty('unspawnNotes.length')-1 do
		setPropertyFromGroup('unspawnNotes', i, 'visible', false);
	end
end

local event1 = false
local event2 = false

function onUpdate()
    	if not event1 and getProperty('curStep') == 16 then
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'alpha', 0);
				setPropertyFromGroup('unspawnNotes', i, 'visible', true);
			end
		end
		noteTweenAlpha('note0TweenAlpha', 0, 1.0, 0.5, 'linear')
		noteTweenAlpha('note1TweenAlpha', 1, 1.0, 0.5, 'linear')
		noteTweenAlpha('note2TweenAlpha', 2, 1.0, 0.5, 'linear')
		noteTweenAlpha('note3TweenAlpha', 3, 1.0, 0.5, 'linear')
		event1 = true;
        end

        if not event2 and getProperty('curStep') == 80 then
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'alpha', 0);
				setPropertyFromGroup('unspawnNotes', i, 'visible', true);
			end
		end
		noteTweenAlpha('note4TweenAlpha', 4, 1.0, 0.5, 'linear')
		noteTweenAlpha('note5TweenAlpha', 5, 1.0, 0.5, 'linear')
		noteTweenAlpha('note6TweenAlpha', 6, 1.0, 0.5, 'linear')
		noteTweenAlpha('note7TweenAlpha', 7, 1.0, 0.5, 'linear')
		event2 = true;
        end
end 
