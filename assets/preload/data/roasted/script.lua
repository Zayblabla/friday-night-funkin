local angleshit = 0.5;
local anglevar = 0.5;
function onCreate()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		makeLuaSprite('black', 'black', 0, -50.12)
        scaleObject('black', 90, 1);
        setObjectCamera('black', 'hud')
        addLuaSprite('black', false)
        
        makeLuaSprite('black2', 'black', 0, 625)
        scaleObject('black2', 90, 1);
        setObjectCamera('black2', 'hud')
        addLuaSprite('black2', true)
	
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		makeLuaSprite('black', 'black', 0, -164)
        scaleObject('black', 90, 3);
        setObjectCamera('black', 'hud')
        addLuaSprite('black', true)
        
        makeLuaSprite('black2', 'black', 0, 635)
        scaleObject('black2', 90, 1);
        setObjectCamera('black2', 'hud')
        addLuaSprite('black2', false)
	end




        makeLuaSprite('BL','white',0,0)
        scaleObject('BL', 10, 10);
        setObjectCamera('BL','hud');
	    addLuaSprite('BL','true',true)

		makeLuaSprite('BL5','black',1900,0)
        scaleObject('BL5', 1990, 10);
        setObjectCamera('BL5','hud');
	    addLuaSprite('BL5','true',true)

		setProperty('camHUD.visible', false);
end

function onStepHit()
if curStep == 28 then
    doTweenAlpha('BL','BL',0,0.7,'cubeInOut')
end
end


function onBeatHit()
	if curBeat > 7.1 then
		setProperty('camHUD.visible', true);
		doTweenAlpha('HUD','HUD', 0,0,'cubeInOut')


		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end

end

function onUpdate()
	if curBeat > 619 then
		if curStep % 4 == 0 then
			doTweenX('BL5', 'BL5', -950, stepCrochet*0.000002, 'circOut')
		end
		if curStep % 4 == 2 then
			doTweenX('BL5', 'BL5', -940, stepCrochet*0.000002, 'sineIn')
		end
	end
end

--620