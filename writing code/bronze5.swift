//: Playground - noun: a place where people can play

import Cocoa

let point = (x:0, y:10)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is quadrant 1")
case let q2 where(point.x < 0) && (point.y > 0):
    print("\(q2) is quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is quadrant 3")
case let q4 where(point.x > 0) && (point.y < 0):
    print("\(q4) is quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("case not covered")
}
