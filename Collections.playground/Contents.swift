import UIKit

var greeting = "Hello, playground"

// Dictionary of the things I have at my house
var myCollection: [String: Int] = ["Books": 20,"Comics": 6, "Pillows": 4, "Candles": 2, "Trophies": 9, "Copmuters": 2, "MacBooks": 1]

let sortedArray2 = myCollection.sorted( by: { $0.1 < $1.1 })
print(sortedArray2)

// Array of my books
var myBooks = ["The Richest Man In Babylon", "Meditations", "Psychology of Money", "Zero to One", "Mastering Swift 5.3", "The Intelligent Investor"]

var myOtherBooks = ["The Philosophy of Aristotle", "Wisdom of the Bullfrog", "Tales from the Cafe"]

var combinedBooks = myBooks + myOtherBooks

print(combinedBooks)

myBooks.remove(at: 1)
myBooks.append("Batman")

print(myBooks)


let arrayOne = [95, 90, 55, 30, 60]
let count = arrayOne.filter{ $0 >= 90 }.count

print(count)
