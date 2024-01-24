import UIKit

var greeting = "Hello, playground"

enum BurgerStyle {
    case Plain
    case Veggie
    case Brunch
    case Spicy
    case Classic
}

struct BillMenu {
    let name: String
    let burgerType: BurgerStyle
    let price: Double
}

var menu: [BillMenu] = [
    BillMenu(name: "Classic Burger", burgerType: .Classic, price: 8.99),
    BillMenu(name: "Spicy Burger", burgerType: .Spicy, price: 9.99),
    BillMenu(name: "Veggie Burger", burgerType: .Veggie, price: 7.99),
    BillMenu(name: "Big Egg Brunch Burger", burgerType: .Brunch, price: 10.99),
    BillMenu(name: "Plain Cheese Burger", burgerType: .Plain, price: 7.99)
]

func displayMenu() {
    print("Welcome to the Bills Gourmet Burger Restaurant!")
    print("Here is our Menu:")
    
    for (index, item) in menu.enumerated() {
        print("\(index + 1). \(item.name) - $\(item.price)")
    }
}

displayMenu()
