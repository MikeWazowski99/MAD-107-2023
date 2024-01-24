import UIKit

var greeting = "Hello, playground"


//var Players: [String: Int] = ["Andreas Athanasiou": 89, "Anders Bjork": 24, "Colin Blackwell": 43, "Jason Dickinson": 17, "MacKenzie Entwistle": 58, "Andreas Englund": 28, "Seth Jones": 4, "Caleb Jones": 82, "Alex Stalock": 32]

// This sorted array is an int which is their jersey # and then a string being their name
var Players: [Int: String] = [89: "Andreas Athanasiou", 24: "Anders Bjork", 43: "Colin Blackwell", 17: "Jason Dickinson", 58: "MacKenzie Entwistle", 28: "Andreas Englund", 4: "Seth Jones", 82: "Caleb Jones", 32: "Alex Stalock"]


// Players sorted by their #
let sortedArray = Players.sorted( by: { $0.0 < $1.0 })
print("Blackhawk players sorted by their Jersey #\n",sortedArray)
// Players Age Sorted // Number on the left on the dictionary are the player's number and the num on the right is their age
var PlayersAge: [Int: Int] = [89: 28, 24: 26, 43: 30, 17:27, 58:23, 28:27, 4:28, 82:25, 32:35]
let sortedArray2 = PlayersAge.sorted( by: { $0.1 < $1.1 })
print("\nBlackhawks player sorted by their age\n",sortedArray2)

// Players Country sorted
var PlayersCountry: [Int: String] = [89: "CAN", 24:"USA", 43: "USA", 17:"CAN", 58:"CAN", 28:"SWE", 4:"USA", 82:"USA", 32:"USA"]
let sortedArray3 = PlayersCountry.sorted { $0.value < $1.value }
print("\nBlackhawk players sorted by their country\n",sortedArray3)

// Avg Age
var sum = 0

for value in PlayersAge.values {
    sum += value
}
print("\nThe average age is:", sum / 9)

// Avg Height
let PlayersHeight = [74.4, 72, 70.8, 74.4, 75.6, 75.6, 73.2, 76.8, 61.32]
var sumHeight = 0.0

for height in PlayersHeight {
    sumHeight += height
}
var avgHeight = sumHeight / 9 // in inches
var avgHeightFt = avgHeight / 12 // in ft
let formattedAvgHeightFt = String(format: "%.2f", avgHeightFt) // formats the decimal value to the second decimal point
print("The average height is:", avgHeight, "inches") // 72.68 in is 6 ft tall
print("The average height in ft is:" ,formattedAvgHeightFt, "ft")
//
var PlayersBirthMonth: [Int: String] = [89: "AUG", 24:"AUG", 43: "MAR", 17:"JUL", 58:"JUL", 28:"JAN", 4:"OCT", 82:"JUN", 32:"JUL"]

var countByMonth: [String: Int] = [:]

for (_, month) in PlayersBirthMonth {
    if let count = countByMonth[month] {
        countByMonth[month] = count + 1
    } else {
        countByMonth[month] = 1
    }
}

print(countByMonth, "\n The average birth month for the Blackhawks players is July")
