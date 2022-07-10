function onCreate()
	setObjectCamera('bars', 'other');
	makeLuaText('perezgua', "PORTEADO POR | PEREZ SEN ", 0, 2, 700); 
	setTextSize('perezgua', 20);
	setObjectCamera('perezgua', 'other');
makeAnimatedLuaSprite('DADDY_DEAREST','starved/DADDY_DEAREST',-1300,-180)
if not lowQuality then
addAnimationByPrefix('DADDY_DEAREST','idle','Símbolo 100',24,true)
end
scaleObject('DADDY_DEAREST',2,2)
addLuaSprite('DADDY_DEAREST',false)
doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
if not lowQuality then
makeLuaSprite('camara negra', 'starved/camara negra', 700, -295);
scaleObject('camara negra', 2.47, 2.4);
addLuaSprite('camara negra', false);
setProperty('camara negra.alpha', 0.0003);
setProperty('camara negra.alpha', 7);
doTweenAlpha('tweenCutOffAlpha', 'camara negra', 0, 7, 'linear');
setProperty('camara negra.visible', true);
end

precacheImage('starved/Furnace_sheet')
precacheImage('starved/camara negra')
precacheImage('starved/xd')
precacheImage('bars')
precacheImage('flash')
precacheImage('red')
precacheImage('out')
precacheImage('DADDY_DEAREST')
precacheImage('black')

end
function onEvent(name,value1)
	if name == 'Perez Sen' then 
		if value1 == '1' then
			if not lowQuality then
			makeLuaSprite('out', 'out', 0, 0);
			setLuaSpriteScrollFactor('out', 0, 0);
			setProperty('out.alpha', 0.0006);
			setObjectCamera('out', 'other');
			setProperty('out.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'out', 0, 8.0, 'linear');
			setObjectCamera('out', 'other');
			addLuaSprite('out', false);
			end
		end
		if value1 == '2' then
			if not lowQuality then
			makeLuaSprite('flash', 'flash', 0, 0);
			setLuaSpriteScrollFactor('flash', 0, 0);
			setProperty('flash.alpha', 0.0006);
			setObjectCamera('flash', 'other');
			setProperty('flash.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1.9, 'linear');
			setObjectCamera('flash', 'other');
			addLuaSprite('flash', false);
			end
			doTweenColor('timeBar', 'timeBar', '004AEA ', 0.5, 'circOut')

			setProperty('camara negra.visible', false);
			makeAnimatedLuaSprite('xd','starved/xd',-3000,-1090)
			if not lowQuality then
			addAnimationByPrefix('xd','idle','Símbolo 100',24,true)
			end
			scaleObject('xd',1,1.5)
			addLuaSprite('xd',true)
			addLuaText('perezgua', true);
		end
		if value1 == '3' then
			if not lowQuality then
			setProperty('bars.alpha', 1);
			makeLuaSprite('bars', 'bars', 0, -15);
			scaleObject('bars', 0.35, 0.35);
			setObjectCamera('bars', 'other');
			setProperty('bars.antialiasing', false);
			addLuaSprite('bars', true);
			setProperty('baars.alpha', 0.2);
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
			end
		end
		if value1 == '4' then
			if not lowQuality then
			setProperty('bars.visible',false)
			end
			doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
			doTweenAlpha('tweenCutOffAlpha', 'bars', 0, 1.9, 'linear')

		end
		if value1 == '5' then
			if not lowQuality then
			makeLuaSprite('black', 'black', -20, -20);
			setLuaSpriteScrollFactor('black', 0, 0);
			setProperty('black.alpha', 0.0006);
			scaleObject('black', 3, 3);
			setObjectCamera('black', 'other');
			setProperty('black.alpha', 1);
			end
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
			if not lowQuality then
			addLuaSprite('black', false);
			doTweenColor('red', 'red', 'FF0000 ', 0.5, 'circOut')
			makeLuaSprite('red', 'red', 0, 0);
			setLuaSpriteScrollFactor('red', 0, 0);
			setProperty('red.alpha', 0.0006);
			setProperty('red.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'red', 0, 1.9, 'linear');
			setObjectCamera('red', 'other');
			addLuaSprite('red', false);
		end
		if value1 == '6' then
			doTweenX("dad", "dad", 1800, 2.4, "linear")	
	end
end
function onStepHit()
	if curStep == 1546 then
		doTweenX("dad", "dad", 1800, 2.4, "linear")
end
end
end
end