[[-- This is code for the {{Setup Button}} ]]--

[[-- Constants ]]--
ACTION_DECK = Global.getVar('ACTION_DECK')
BONUS_DECK = Global.getVar('BONUS_DECK')
QUEST_DECK = Global.getVar('QUEST_DECK')
QUEST_ZONE_ONE = Global.getVar('QUEST_ZONE_ONE')
QUEST_ZONE_TWO = Global.getVar('QUEST_ZONE_TWO')
QUEST_ZONE_THREE = Global.getVar('QUEST_ZONE_THREE')
GAME_STARTED = false

[[-- Setup Cards to Start Game ]]--
function setUpGame()
    local action_deck = getObjectFromGUID(ACTION_DECK)
    local bonus_deck = getObjectFromGUID(BONUS_DECK)
    local quest_deck = getObjectFromGUID(QUEST_DECK)

    if GAME_STARTED == false then
        action_deck.randomize()
        bonus_deck.randomize()
        quest_deck.randomize()

        action_deck.deal(3)
        action_deck.deal(3)
        quest_deck.questSetUp()

        GAME_STARTED = true

        broadcastToAll("All players get 3 Action & 3 Bonus cards.")
        broadcastToAll("3 Quest cards ready to be completed.")

    else

        broadcastToAll("The game has already started. You cannot setup again.")

    end
end

[[-- Specific Setup for Quests cards ]]--
function questSetUp()
    local deck = getObjectFromGUID(QUEST_DECK)

    -- Get scripting zone locations to place a single quest card.
    local questZoneOne = ???.getPosition()
    local questZoneTwo = ???.getPosition()
    local questZoneThree = ???.getPosition()

    for i = 1, 1 do
        deck.takeObject({
            flip = true,
            position = {questZoneOne}
        })
    end
    for i = 1, 1 do
        deck.takeObject({
            flip = true,
            position = {questZoneTwo}
        })
    end
    for i = 1, 1 do
        deck.takeObject({
            flip = true,
            position = {questZoneThree}
        })
    end

    ---
        if

    ---
end
