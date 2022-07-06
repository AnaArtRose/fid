function onEvent(name,value1,value2)
	if name == 'Replace stage layer' then --name of the event to be used
		
		if value1 == 'bgnormal' then --put the normal bg
			setProperty('bgdark.visible', true);
			setProperty('bgall.visible', false);
			setProperty('bgRed.visible', false);
			setProperty('bgBlue.visible', false);
			setProperty('bgYellow.visible', false);
			setProperty('bgGreen.visible', false);
			
			setProperty('floor.visible', false)
			setProperty('floordark.visible', true)
		end
		if value1 == 'bgall' then --put the 1 bg
			setProperty('bgdark.visible', false);
			setProperty('bgall.visible', true);
			setProperty('bgRed.visible', false);
			setProperty('bgBlue.visible', false);
			setProperty('bgYellow.visible', false);
			setProperty('bgGreen.visible', false);

			setProperty('floor.visible', true)
			setProperty('floordark.visible', false)
		end
		if value1 == 'bgRed' then --put the 2 bg
			setProperty('bgdark.visible', false);
			setProperty('bgall.visible', false);
			setProperty('bgRed.visible', true);
			setProperty('bgBlue.visible', false);
			setProperty('bgYellow.visible', false);
			setProperty('bgGreen.visible', false);

			setProperty('floor.visible', true)
			setProperty('floordark.visible', false)
		end
		if value1 == 'bgBlue' then --put the 3 bg
			setProperty('bgdark.visible', false);
			setProperty('bgall.visible', false);
			setProperty('bgRed.visible', false);
			setProperty('bgBlue.visible', true);
			setProperty('bgYellow.visible', false);
			setProperty('bgGreen.visible', false);

			setProperty('floor.visible', true)
			setProperty('floordark.visible', false)
		end
		if value1 == 'bgYellow' then --put the 3 bg
			setProperty('bgdark.visible', false);
			setProperty('bgall.visible', false);
			setProperty('bgRed.visible', false);
			setProperty('bgBlue.visible', false);
			setProperty('bgYellow.visible', true);
			setProperty('bgGreen.visible', false);

			setProperty('floor.visible', true)
			setProperty('floordark.visible', false)
		end
		if value1 == 'bgGreen' then --put the 3 bg
			setProperty('bgdark.visible', false);
			setProperty('bgall.visible', false);
			setProperty('bgRed.visible', false);
			setProperty('bgBlue.visible', false);
			setProperty('bgYellow.visible', false);
			setProperty('bgGreen.visible', true);

			setProperty('floor.visible', true)
			setProperty('floordark.visible', false)
		end
	end
end