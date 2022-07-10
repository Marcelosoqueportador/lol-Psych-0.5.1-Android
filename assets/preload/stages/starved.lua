function onUpdatePost()
	setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
	end
function onCreate()
	makeLuaText('PEREZ SEN H2O', "PORTEADO POR | PEREZ SEN ", 0, 2, 700); 
	setTextSize('PEREZ SEN H2O', 20);
	setObjectCamera('PEREZ SEN H2O', 'other');
	addLuaText('PEREZ SEN H2O', true);
	if not lowQuality then
	precacheImage('starved/sonicisfuckingdead')
	end
	precacheImage('starved/camara negra')

	if not lowQuality then
	makeLuaSprite('city', 'starved/city', -400, -225);
	setScrollFactor('city', 0.75, 0.75);
	scaleObject('city', 1.47, 1.4);
	addLuaSprite('city', false);
	end

	if not lowQuality then
	makeLuaSprite('towers', 'starved/towers', -400, -215);
	setScrollFactor('towers', 0.75, 0.75);
	scaleObject('towers', 1.47, 1.4);
	addLuaSprite('towers', false);
	end

	makeLuaSprite('stage', 'starved/stage', -400, -275);
	scaleObject('stage', 1.47, 1.4);
	addLuaSprite('stage', false);

	if not lowQuality then
	makeLuaSprite('sonicisfuckingdead', 'starved/sonicisfuckingdead', 130, 50);
	scaleObject('sonicisfuckingdead', 0.6, 0.6);
	addLuaSprite('sonicisfuckingdead', false);
	end

	makeLuaSprite('out', 'out', -400, -215);
	setScrollFactor('out', 0.75, 0.75);
	addLuaSprite('out', true);
	setObjectCamera('out', 'other');
	setProperty('out.alpha', 0.1);
	scaleObject('out', 1.47, 1.4);

end

	function onEvent(name,value1)
		if name == 'Perez Sen' then 
			if value1 == '1' then
				makeLuaSprite('camara negra', 'starved/camara negra', -400, -295);
				scaleObject('camara negra', 1.47, 1.4);
				addLuaSprite('camara negra', false);
				setProperty('camara negra.alpha', 0.0003);
				setProperty('camara negra.alpha', 7);
				doTweenAlpha('tweenCutOffAlpha', 'camara negra', 0, 7, 'linear');
				setProperty('camara negra.visible', true);
				if not lowQuality then
				makeLuaSprite('sonicisfuckingdead', 'starved/sonicisfuckingdead', 130, 50);
				scaleObject('sonicisfuckingdead', 0.7, 0.7);			
				addLuaSprite('sonicisfuckingdead', false);
				doTweenColor('sonicisfuckingdead', 'sonicisfuckingdead', 'FF0000 ', 0.5, 'circOut');
				end
				doTweenColor('boyfriend', 'boyfriend', 'FF0000', 0.5, 'circOut');
				doTweenColor('dad', 'dad', 'FF0000', 0.5, 'circOut');
				doTweenColor('timeBar', 'timeBar', 'FF0000', 0.5, 'circOut');
				if not lowQuality then
				doTweenColor('iconP1', 'iconP1', 'FF0000 ', 0.5, 'circOut');
				doTweenColor('iconP2', 'iconP2', 'FF0000 ', 0.5, 'circOut');
				doTweenColor('healthBar', 'healthBar', 'FF0000 ', 0.5, 'circOut')
				doTweenColor('PEREZ SEN H2O', 'PEREZ SEN H2O', 'FF0000 ', 0.5, 'circOut')
				setProperty('iconP1.alpha', 0.0);
				setProperty('iconP2.alpha', 0.0);
				setProperty('healthBar.alpha', 0.0);

				end
				if downscroll and not inGameOver then
				doTweenY("healthBar", "healthBar", -110, 1.2, "linear")
				doTweenY("iconP1", "iconP1", -0, 1.2, "linear")	
				doTweenY("iconP2", "iconP2", -0, 1.2, "linear")	
				doTweenY("scoreTxt", "scoreTxt", 10, 1.2, "linear")	
				end
		end
			if value1 == '2' then
				makeLuaSprite('camara negra', 'starved/camara negra', -400, -215);
				setScrollFactor('camara negra', 0.75, 0.75);
				scaleObject('camara negra', 1.47, 1.4);
				addLuaSprite('camara negra', false);
				setProperty('camara negra.alpha', 0.0006);
				setProperty('camara negra.alpha', 1);
				doTweenAlpha('tweenCutOffAlpha', 'camara negra', 0, 1.9, 'linear');
				setProperty('camara negra.visible', false);
				if not lowQuality then
				makeLuaSprite('sonicisfuckingdead', 'starved/sonicisfuckingdead', 130, 50);
				scaleObject('sonicisfuckingdead', 0.7, 0.7);
				addLuaSprite('sonicisfuckingdead', false);
				doTweenColor('sonicisfuckingdead', 'sonicisfuckingdead', 'FFFFFF ', 0.5, 'circOut');
				end
				doTweenColor('PEREZ SEN H2O', 'PEREZ SEN H2O', 'FFFFFF ', 0.01, 'circOut');
				doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.5, 'circOut');
				doTweenColor('dad', 'dad', 'FFFFFF', 0.5, 'circOut');
				doTweenColor('timeBar', 'timeBar', 'FFFFFF', 0.5, 'circOut');
				doTweenColor('iconP1', 'iconP1', 'FFFFFF ', 0.5, 'circOut');
				doTweenColor('iconP2', 'iconP2', 'FFFFFF ', 0.5, 'circOut');
				doTweenColor('healthBar', 'healthBar', 'FFFFFF ', 0.5, 'circOut');
				doTweenColor('timeBar', 'timeBar', 'FFFFFF ', 0.01, 'circOut');
				setProperty('out.alpha', 0.15);
				if downscroll and not inGameOver then
				doTweenY("iconP1", "iconP1", -110, 1.2, "linear")	
				doTweenY("iconP2", "iconP2", -110, 1.2, "linear")	
				doTweenY("scoreTxt", "scoreTxt", 10, 1.2, "linear")	
				end
			end
	end
end