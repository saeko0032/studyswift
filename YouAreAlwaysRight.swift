while !isOnGem {
    moveForward()
    if isOnClosedSwitch {
        toggleSwitch()
        
    }
    if !isBlockedRight && isBlocked{
        turnRight()
    }
}
collectGem()



