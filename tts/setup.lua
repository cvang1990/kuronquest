-- This is code for the {{Setup Button}} 

-- Constants
ACTION_DECK = Global.getVar('ACTION_DECK')
BONUS_DECK = Global.getVar('BONUS_DECK')
QUEST_DECK = Global.getVar('QUEST_DECK')
QUEST_ZONE_ONE = Global.getVar('QUEST_ZONE_ONE')
QUEST_ZONE_TWO = Global.getVar('QUEST_ZONE_TWO')
QUEST_ZONE_THREE = Global.getVar('QUEST_ZONE_THREE')
FINISH_SETUP = Global.getVar('FINISH_SETUP')

function onLoad()
    print(FINISH_SETUP)
end

-- Setup Cards to Start Game
function setupGame()
    local action_deck = getObjectFromGUID(ACTION_DECK)
    local bonus_deck = getObjectFromGUID(BONUS_DECK)
    local quest_deck = getObjectFromGUID(QUEST_DECK)

    if FINISH_SETUP == "false" then
        action_deck.randomize()
        bonus_deck.randomize()
        quest_deck.randomize()

        action_deck.deal(3)
        bonus_deck.deal(3)
        questCardsSetup()

        FINISH_SETUP = "true"

        broadcastToAll('Setup is complete. The game is ready to start!')
        printToAll('All players get 3 Action cards, 3 Bonus cards, 3 Keru Coins, & 3 Settlement pieces.')
        printToAll('All players start at level 1 with an Attack of 1 and Defense of 1.')
        printToAll('All players start with 6 Life points, 0 Honor Points, & Level 1.')
        printToAll('3 Quest cards are drawn and ready to be completed by anyone.')

    else

        broadcastToAll("The game has already started. You cannot setup again.")

    end
end

-- Setup Quest cards in correct places
function questCardsSetup()
    local quest_deck = getObjectFromGUID(QUEST_DECK)
    local quest_zone_one = getObjectFromGUID(QUEST_ZONE_ONE)
    local quest_zone_two = getObjectFromGUID(QUEST_ZONE_TWO)
    local quest_zone_three = getObjectFromGUID(QUEST_ZONE_THREE)
    
    for i=1, 1 do
        quest_deck.takeObject({
            flip=true,
            position={quest_zone_one.getPosition()}
        })
    end
    
end

