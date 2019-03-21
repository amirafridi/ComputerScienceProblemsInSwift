import UIKit

//Amir Afridi
// document used for solving basic computer science problems using SWIFT



// fibonacci
func fib(n: UInt) -> UInt {
    var last : UInt = 0
    var next : UInt = 1
    for _ in 1...n {
        (last, next) = (next, last + next)
    }
    return next
}

print(fib(n: 6))
print(fib(n: 12))
print(fib(n: 50))
print(fib(n: 92))

// end of fibonacci
//
//

// tower of hanoi

public class Stack<T> : CustomStringConvertible {
    private var container: [T] = [T]()
    public func push (_ thing: T) { container.append(thing) }
    public func pop () -> T { return container.removeLast() }
    public var description: String { return container.description }
}

func hanoi (from: Stack<Int>, to: Stack<Int>, middle: Stack<Int>, n: Int) {
    if n == 1 {
        to.push(from.pop())
    } else {
        hanoi(from: from, to: middle, middle: to, n: n - 1)
        hanoi(from: from, to: to, middle: middle, n: 1)
        hanoi(from: middle, to: to, middle: from, n: n-1)
    }
}

var numDiscs = 3
var towerA = Stack<Int>()
var towerB = Stack<Int>()
var towerC = Stack<Int>()
// load towerA
for i in 1...numDiscs {
    towerA.push(i)
}

print(towerA)
print(towerB)
print(towerC)
hanoi(from: towerA, to: towerC, middle: towerB, n: numDiscs)
print(towerA)
print(towerB)
print(towerC)


// towers of hanoi function where only parameter is number of discs
func towersOfHanoi(n: Int) -> Stack<Int> {
    let towerA = Stack<Int>()
    let towerB = Stack<Int>()
    let towerC = Stack<Int>()
    
    for i in 1...n {
        towerA.push(i)
    }
    
    hanoi(from: towerA, to: towerC, middle: towerB, n: n)
    
    return towerC
}

// end of tower of hanoi
//
//



