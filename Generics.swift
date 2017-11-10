import UIkit

Class Queue<T> {
  var storage: [String] = []
  
  func enqueue(_value: T) {
    storage.append(value)
  }
  
  func dequeue() -> T? {
    return storage.removeFirst()
  }
}

let q = Queue<String>()
q.enqueue("Tom")
var first = q.dequeue()

let q2 = Queue<Int>()
q.enqueue(2)
var second = q2.dequeue()
