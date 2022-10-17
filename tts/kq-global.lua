-- Constants in the game
ACTION_DECK = "0cc996"
BONUS_DECK = "c19164"
QUEST_DECK = "f6bb8b"

QUEST_ZONE_ONE = "e6e298"
QUEST_ZONE_TWO = "55856e"
QUEST_ZONE_THREE = "1e49cd"

FINISH_SETUP = "false"

-- When game starts
function onLoad()
    broadcastToAll('Let the adventure begin!')
    broadcastToAll('Welcome to Kuron Quest.')
end
