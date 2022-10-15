--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

--[[ Get objects for starting game--]]
function getObjects()
    actionDeck = getObjectFromGUID("0cc996")
    bonusDeck = getObjectFromGUID("c19164")
    questDeck = getObjectFromGUID("f6bb8b")
    
    setupButton = getObjectFromGUID("9f29a4")

end

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    getObjects()

    if setupButton ~= nil then
        setupButton.interactable = false;
        
        setupButton.createButton({
            label="Setup",
            position={0,0.5,0},
            click_function="setupGame",
            function_owner=self,
            height=1000, width=2500,
            font_color={1,1,1},
            font_size=1000,
            color={1,0,0},
        })
    end  

    broadcastToAll('Let the adventure begin!')
    broadcastToAll('Welcome to Kuron Quest.')
end

--[[ Setup the game--]
function setupGame()
    local players = 0
    local questCards = 3
    local actionCards = 3
    local bonusCards = 3

    local delayAdd = 0.5
    local delaySum = delayAdd

    -- get count setaed players
    local playerList = getSeatedPlayers()
    for _ in ipairs(playerList) do players = players +1 end

    -- set player count specific values
    
end


--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
    --[[ print('onUpdate loop!') --]]
end
