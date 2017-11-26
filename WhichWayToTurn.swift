func navigateAroundWall() {
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
    if isBlockedRight && isBlocked {
        if !isBlockedLeft {
            toggleSwitch()
            turnLeft()
            moveForward()
        } else{
            turnLeft()
            turnLeft()
        }
    }
    
}

while !isOnGem {
    navigateAroundWall()
    if isOnClosedSwitch {
        toggleSwitch()
    }
}
collectGem()

