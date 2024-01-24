import UIKit

var greeting = "Hello, playground"

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, \(name) welcome to your self help journey.")
    }
}

let person1 = Person(name: "Alice")
let person2 = Person(name: "Chad")

person1.sayHello()
person2.sayHello()


func Choices {
    print("Hello user please select one of the following options:")
}
