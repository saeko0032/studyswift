var gemCounter = 0
while gemCounter < 7 {
    moveForward()
    if isBlocked {
        turnRight()
        turnRight()
    }
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}
