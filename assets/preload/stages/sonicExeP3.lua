local bluelight = true
local t = 0
local s = 0
function onCreate()
	makeAnimatedLuaSprite('galaxiianimated','staticBACKGROUND2',-350,-150)
    addAnimationByPrefix('galaxiianimated','dance','menuSTATICNEW instance',24,true)
    objectPlayAnimation('galaxiianimated','dance',false)
    setScrollFactor('galaxiianimated', 0.9, 0.9);
    scaleObject('galaxiianimated', 1.7, 1.7);

    makeAnimatedLuaSprite('plasticShit', 'exep3/NewTitleMenuBG', 0, 0)
    addAnimationByPrefix('plasticShit', 'ImGonnaDie', 'TitleMenuSSBG instance 1', 24, true)
    setGraphicSize('plasticShit', getProperty('plasticShit.width') * 4.5)
    setProperty('plasticShit.visible', false)
    addLuaSprite('plasticShit', false)

    makeLuaSprite('trees1', 'exep3/Trees', -607, -401)
    addLuaSprite('trees1')
    setScrollFactor('trees1', 0.95, 1)
    setGraphicSize('trees1', getProperty('trees1.width') * 1.2)

    makeLuaSprite('trees2', 'exep3/Trees2', -623, -410)
    setGraphicSize('trees2', getProperty('trees2.width') * 1.2)
    addLuaSprite('trees2', false)

    makeLuaSprite('grass', 'exep3/Grass', -630, -266)
    addLuaSprite('grass', false)
    setGraphicSize('grass', getProperty('grass.width') * 1.2)
end

function onCreatePost()
    --setProperty('gf.alpha', 0)
end

function onUpdate()
    if curBeat <= 71 then
        if not lowQuality then
            health = getProperty('health')
            if getProperty('health') > 0.05 then
                triggerEvent('Blammed Lights', '1')
                makeAnimatedLuaSprite('galaxiianimated','staticBACKGROUND2',-350,-150)
                addAnimationByPrefix('galaxiianimated','dance','menuSTATICNEW instance',24,true)
                objectPlayAnimation('galaxiianimated','dance',false)
                setScrollFactor('galaxiianimated', 0.9, 0.9);
                scaleObject('galaxiianimated', 1.7, 1.7);
            
                makeAnimatedLuaSprite('plasticShit', 'exep3/NewTitleMenuBG', 0, 0)
                addAnimationByPrefix('plasticShit', 'ImGonnaDie', 'TitleMenuSSBG instance 1', 24, true)
                setGraphicSize('plasticShit', getProperty('plasticShit.width') * 4.5)
                setProperty('plasticShit.visible', false)
                addLuaSprite('plasticShit', false)
            
                makeLuaSprite('trees1', 'exep3/BlueTree1', -607, -401)
                addLuaSprite('trees1')
                setScrollFactor('trees1', 0.95, 1)
                setGraphicSize('trees1', getProperty('trees1.width') * 1.2)
            
                makeLuaSprite('trees2', 'exep3/BlueTree2', -623, -410)
                setGraphicSize('trees2', getProperty('trees2.width') * 1.2)
                addLuaSprite('trees2', false)
            
                makeLuaSprite('grass', 'exep3/BlueGrass', -630, -266)
                addLuaSprite('grass', false)
                setGraphicSize('grass', getProperty('grass.width') * 1.2)
            end
        end
    end
    if curBeat >= 64 then
        if curBeat <= 71 then
            setProperty('camHUD.visible', false);  
        else
            setProperty('camHUD.visible', true);
        end
    end
    if curBeat >= 72 then
        if not lowQuality then
            health = getProperty('health')
            if getProperty('health') > 0.05 then
                triggerEvent('Blammed Lights', '4') 
                addLuaSprite('galaxiianimated', false);

                makeAnimatedLuaSprite('plasticShit', 'exep3/NewTitleMenuBG', 0, 0)
                addAnimationByPrefix('plasticShit', 'ImGonnaDie', 'TitleMenuSSBG instance 1', 24, true)
                setGraphicSize('plasticShit', getProperty('plasticShit.width') * 4.5)
                setProperty('plasticShit.visible', false)
                addLuaSprite('plasticShit', false)
            
                makeLuaSprite('trees1', 'exep3/Trees', -607, -401)
                addLuaSprite('trees1')
                setScrollFactor('trees1', 0.95, 1)
                setGraphicSize('trees1', getProperty('trees1.width') * 1.2)
            
                makeLuaSprite('trees2', 'exep3/Trees2', -623, -410)
                setGraphicSize('trees2', getProperty('trees2.width') * 1.2)
                addLuaSprite('trees2', false)
            
                makeLuaSprite('grass', 'exep3/Grass', -630, -266)
                addLuaSprite('grass', false)
                setGraphicSize('grass', getProperty('grass.width') * 1.2)
            end
        end
    end
end