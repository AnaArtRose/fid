--shaking arrows----------------
local defaultNotePos = {};
local shake = 4;

 
function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})
    end
end

function onUpdate(elapsed)
 
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 300) * (bpm / 100)

    if curStep >= 247 and curStep < 569 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + getRandomInt(-shake, shake) + math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + getRandomInt(-shake, shake) + math.sin((currentBeat + i*0.25) * math.pi))
        end                                                        
    end                                                           
    if curStep == 569 then
        for i = 0,7 do 
            setPrbopertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
    if curStep >= 848 and curStep < 1535 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + getRandomInt(-shake, shake) + math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + getRandomInt(-shake, shake) + math.sin((currentBeat + i*0.25) * math.pi))
        end                                                        
    end                                                           
    if curStep == 1535 then
        for i = 0,7 do 
            setPrbopertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
end

--notes alpha--
function onStepHit()
    if curStep == 159 then
        for i = 0,7 do
            noteTweenAlpha('NoteAlpha'..tostring(i), i, 0, 0.1, 'cubeInOut')
        end
    end
    if curStep == 199 then
        for i = 0,7 do
            noteTweenAlpha('NoteAlpha'..tostring(i), i, 1, 0.5, 'cubeInOut')
        end
    end
        if curStep == 1534 then
        for i = 0,7 do
            noteTweenAlpha('NoteAlpha'..tostring(i), i, 0, 0.5, 'cubeInOut')
        end
    end
end

--video--
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('FamishedIntro');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end