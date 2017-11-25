func toggleSwitchs() {
    while !isBlocked {
        moveForward()
        if isOnClosedSwitch {
            toggleSwitch()
        }
    }
    turnRight()
    moveForward()
    turnRight()
}
func collectGems() {
    while !isBlocked {
        moveForward()
        if isOnGem {
            collectGem()
        }
    }
    turnLeft()
    moveForward()
    turnLeft()
}
toggleSwitchs()
collectGems()
toggleSwitchs()



    
