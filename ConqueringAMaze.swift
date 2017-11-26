func navigateAroundWall() {
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
    if isBlockedRight && isBlocked {
        if !isBlockedLeft {
            turnLeft()
            moveForward()
        } else{turnLeft()
            turnLeft()
}
    }
    
}
    
while !isOnGem {
    navigateAroundWall()
}
collectGem()

