import UIKit

//var greeting = "Hello, playground"
//
//func getNames() -> [String] {
//    var retArray = ["Jon", "Kailey", "Kara"]
//    return retArray
//}
//var names = getNames()
//
//func Fibonacci() -> [Int] {
//    var count = 0
//    var num1 = 0
//    var num2 = 1
//    while count <= 1000 {
//        print(count)
//        count = num1 + num2
//        num1 = num2
//        num2 = count
//    }
//    return Fibonacci(
//}
//
//print(Fibonacci())


func Fibonacci(max: Int) -> [Int] {
    var a = 0, b = 1, c = 0
    var fib = [a, b]
    
    while c < max {
        c = a + b
        if c <= max {
            fib.append(c)
        }
        a = b
        b = c
    }
    
    return fib
}

print(Fibonacci(max: 1000))


