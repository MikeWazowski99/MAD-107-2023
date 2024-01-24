import UIKit

func Fibonacci() {
    var a = 1
    var b = 1
    var c = 0
    
    print(a) // Print the first number
    print(b) // Print the second number
    
    while c < 1000 {
        c = a + b
        if c <= 1000 {
            print(c)
        }
        a = b
        b = c
    }
}

Fibonacci()
