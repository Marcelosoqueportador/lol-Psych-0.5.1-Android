function onStepHit()--Bueno Este Metodo Es Muy Facil De Usar, Lo Cree En Un Dia Si me Dan creditos Por El Esfuerso Se Los Agradeceria Soy Perez Sen Y Eso Es TODO :)
	if curStep == 250 then

		makeLuaSprite('box', 'box', 450, -1200);
		scaleObject('box', 1.0, 1.0);
		addLuaSprite('box', false);
		setProperty('box.visible', true);
		setObjectCamera('box', 'other');


		makeLuaText('Text', "PORT A PC/ANDROID Perez Sen", 299, 510, -700); 
		setTextSize('Text', 29);
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);

		doTweenY("box", "box", -0, 0.8, "linear")	
		doTweenY("Text", "Text", 350, 1, "linear")	
	end
	if curStep == 298 then
		doTweenY("box", "box", -780, 0.8, "linear")	
		doTweenY("Text", "Text", -350, 0.7, "linear")
	end
	end