let maxGems = 3
let maxSwitchs = 4
var numOfGems = 0
var numOfSwitchs = 0

func decideYourWay() {
    if isBlocked {
        if isBlockedRight {
            turnLeft()
        } else if isBlockedLeft {
            turnRight()
        }
    }
}

while numOfSwitchs < maxSwitchs {
    decideYourWay()
    moveForward()
    
    if numOfGems < maxGems {
        if isOnGem {
            numOfGems += 1
            collectGem()
        }
    }
    if isOnClosedSwitch {
        numOfSwitchs += 1
        toggleSwitch()
    }
}  

